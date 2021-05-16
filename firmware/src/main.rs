// #![deny(unsafe_code)]
#![no_main]
#![no_std]

extern crate panic_rtt_target;

// mod boards;
// mod device;
// mod mpu6000;
mod clock;
mod drivers;

use embedded_hal::blocking::delay::DelayMs;
// use mpu6000::{
//     bus::{Bus, SpiBus},
//     registers::{AccelerometerSensitive, GyroSensitive},
//     MPU6000,
// };
use crate::clock::SysClock;
use crate::drivers::Servos;
use embedded_time::Clock;
use rtic::app;
use rtt_target::{rprintln, rtt_init_print};
use stm32f7xx_hal::gpio::gpioa::{PA10, PA8};
use stm32f7xx_hal::gpio::{Floating, Input, Output, PushPull};
use stm32f7xx_hal::pac::{EXTI, TIM1, TIM2, TIM3, TIM4};
use stm32f7xx_hal::pwm::{PwmChannels, C1, C2, C3, C4};
use stm32f7xx_hal::timer::Event;
use stm32f7xx_hal::{
    delay::Delay,
    gpio::{self, Edge, ExtiPin},
    i2c::{self, I2c},
    pac,
    prelude::*,
    pwm,
    rcc::{HSEClock, HSEClockMode},
    spi::{self, Spi},
    time::KiloHertz,
    timer::Timer,
};

type I2C1 = I2c<
    pac::I2C1,
    gpio::gpiob::PB8<gpio::Alternate<gpio::AF4>>,
    gpio::gpiob::PB9<gpio::Alternate<gpio::AF4>>,
>;

type SPI1 = Spi<
    pac::SPI1,
    (
        gpio::gpioa::PA5<gpio::Alternate<gpio::AF5>>,
        gpio::gpioa::PA6<gpio::Alternate<gpio::AF5>>,
        gpio::gpioa::PA7<gpio::Alternate<gpio::AF5>>,
    ),
    spi::Enabled<u8>,
>;

type TriggerPin = PA10<Output<PushPull>>;
type EchoPin = PA8<Input<Floating>>;
type HcSr04 = crate::drivers::HcSr04<TriggerPin>;

#[app(device = stm32f7xx_hal::pac, peripherals = true)]
const APP: () = {
    struct Resources {
        delay: Delay,
        servos: Servos,
        clock: SysClock,
        hcsr04_timer: Timer<TIM4>,
        hcsr04: HcSr04,
        echo_pin: EchoPin,
    }

    #[init]
    fn init(ctx: init::Context) -> init::LateResources {
        rtt_init_print!();
        rprintln!("Welcome to Oxygen F7");

        let core: cortex_m::Peripherals = ctx.core;
        let mut device: stm32f7xx_hal::pac::Peripherals = ctx.device;

        let gpioa = device.GPIOA.split();
        let gpiob = device.GPIOB.split();
        let gpioe = device.GPIOE.split();

        // LED pins
        let mut led1 = gpioe.pe2.into_push_pull_output();
        let mut led2 = gpioe.pe3.into_push_pull_output();

        // Set LED pins to high to indicate flight controller is working
        led1.set_high().unwrap();
        led2.set_high().unwrap();

        // MPU Interrupt pin
        let mut mpu_int = gpiob.pb12.into_floating_input();
        mpu_int.make_interrupt_source(&mut device.SYSCFG, &mut device.RCC);
        mpu_int.trigger_on_edge(&mut device.EXTI, Edge::Rising);
        mpu_int.enable_interrupt(&mut device.EXTI);

        // BMP Interrupt pin
        let mut bmp_int = gpiob.pb14.into_floating_input();
        bmp_int.make_interrupt_source(&mut device.SYSCFG, &mut device.RCC);
        bmp_int.trigger_on_edge(&mut device.EXTI, Edge::Rising);
        bmp_int.enable_interrupt(&mut device.EXTI);

        // MPU and BMP chip select pins
        let mut mpu_cs = gpiob.pb13.into_push_pull_output();
        let mut bmp_cs = gpiob.pb15.into_push_pull_output();

        // Set CS pins to high (disabled) initially
        mpu_cs.set_high().unwrap();
        bmp_cs.set_high().unwrap();

        // Distance Sensor
        let hcsr04 = HcSr04::new(gpioa.pa10.into_push_pull_output())
            .expect("Unable to initialize HC SR-04 ultrasonic distance sensor");

        let mut echo_pin = gpioa.pa8.into_floating_input();
        echo_pin.make_interrupt_source(&mut device.SYSCFG, &mut device.RCC);
        echo_pin.trigger_on_edge(&mut device.EXTI, Edge::RisingFalling);
        echo_pin.enable_interrupt(&mut device.EXTI);

        // Constrain clocking registers
        let mut rcc = device.RCC.constrain();

        // Configure clock and freeze it
        let clocks = rcc
            .cfgr
            .hse(HSEClock::new(8.mhz(), HSEClockMode::Oscillator))
            .sysclk(216.mhz())
            .freeze();

        // Distance sensor trigger timer
        let mut hcsr04_timer = Timer::tim4(device.TIM4, 10.hz(), clocks, &mut rcc.apb1);
        hcsr04_timer.listen(Event::TimeOut);

        // Monotonic clock
        let clock = SysClock::new(device.TIM5, clocks);

        // Get delay provider
        let mut delay = Delay::new(core.SYST, clocks);

        // Servos!
        let servos = Servos::new(
            clocks,
            device.TIM1,
            device.TIM2,
            device.TIM3,
            gpiob.pb0.into_alternate_af2(),
            gpiob.pb1.into_alternate_af2(),
            gpioe.pe9.into_alternate_af1(),
            gpioe.pe11.into_alternate_af1(),
            gpioe.pe13.into_alternate_af1(),
            gpioe.pe14.into_alternate_af1(),
            gpiob.pb10.into_alternate_af1(),
            gpiob.pb11.into_alternate_af1(),
        );

        // I2C1
        let scl = gpiob.pb8.into_alternate_af4();
        let sda = gpiob.pb9.into_alternate_af4();

        let i2c1 = I2c::i2c1(
            device.I2C1,
            (scl, sda),
            i2c::Mode::standard(400.khz()),
            clocks,
            &mut rcc.apb1,
        );

        let i2c1_shared: &'static _ = shared_bus::new_atomic_check!(I2C1 = i2c1).unwrap();

        // SPI1
        let sck = gpioa.pa5.into_alternate_af5();
        let miso = gpioa.pa6.into_alternate_af5();
        let mosi = gpioa.pa7.into_alternate_af5();

        let spi1 = Spi::new(device.SPI1, (sck, miso, mosi)).enable::<u8>(
            &mut rcc.apb2,             // 108 MHz
            spi::ClockDivider::DIV128, // 108/128 = 0.84Mhz (must be 1MHz or less)
            spi::Mode {
                polarity: spi::Polarity::IdleHigh,
                phase: spi::Phase::CaptureOnSecondTransition,
            },
        );

        let spi1_shared: &'static _ = shared_bus::new_atomic_check!(SPI1 = spi1).unwrap();

        // let spi_bus = SpiBus::new(spi, mpu_ncs, delay);
        // let mut mpu6000 = MPU6000::new(spi_bus);
        // mpu6000.reset(&mut delay).unwrap();
        // mpu6000.wake(&delay).unwrap();
        // mpu6000
        //     .set_accelerometer_sensitive(accelerometer_sensitive!(+/-16g, 2048/LSB))
        //     .unwrap();
        // mpu6000
        //     .set_gyro_sensitive(gyro_sensitive!(+/-2000dps, 16.4LSB/dps))
        //     .unwrap();

        init::LateResources {
            delay,
            clock,
            hcsr04_timer,
            hcsr04,
            echo_pin,
            servos,
        }
    }

    #[task(binds = TIM4, resources = [delay, hcsr04_timer, hcsr04])]
    fn hcsr04_timer(ctx: hcsr04_timer::Context) {
        let delay: &mut Delay = ctx.resources.delay;
        let timer: &mut Timer<TIM4> = ctx.resources.hcsr04_timer;
        let hcsr04: &mut HcSr04 = ctx.resources.hcsr04;

        timer.clear_interrupt(Event::TimeOut);

        hcsr04
            .trigger(delay)
            .expect("Unable to trigger distance reading");
    }

    #[task(binds = EXTI9_5, resources = [clock, echo_pin, hcsr04])]
    fn exti9_5(ctx: exti9_5::Context) {
        let echo_pin: &mut EchoPin = ctx.resources.echo_pin;
        let clock: &mut SysClock = ctx.resources.clock;
        let hcsr04: &mut HcSr04 = ctx.resources.hcsr04;

        let now = clock
            .try_now()
            .expect("Unable to get current time from system clock");

        if echo_pin.check_interrupt() {
            echo_pin.clear_interrupt_pending_bit();

            if echo_pin.is_high().unwrap() {
                hcsr04
                    .on_echo_start(now)
                    .expect("Error handling HC-SR04 echo start");
            } else {
                let dist_mm = hcsr04
                    .on_echo_end(now)
                    .expect("Error handling HC-SR04 echo end");
                rprintln!("Current distance: {}mm", dist_mm);
            }
        } else {
            rprintln!("Unexpected EXTI9_5 interrupt");
        }
    }
};
