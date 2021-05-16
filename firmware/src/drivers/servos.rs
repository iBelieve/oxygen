use embedded_hal::PwmPin;
use stm32f7xx_hal::gpio::gpiob::{PB0, PB1, PB10, PB11};
use stm32f7xx_hal::gpio::gpioe::{PE11, PE13, PE14, PE9};
use stm32f7xx_hal::gpio::{Alternate, AF1, AF2};
use stm32f7xx_hal::pac::{TIM1, TIM2, TIM3};
use stm32f7xx_hal::pwm::{self, PwmChannels, C1, C2, C3, C4};
use stm32f7xx_hal::rcc::Clocks;
use stm32f7xx_hal::time::KiloHertz;

const SERVO_PWM_FREQUENCY: KiloHertz = KiloHertz(50);

pub struct Servos {
    ch1: PwmChannels<TIM3, C3>,
    ch2: PwmChannels<TIM3, C4>,
    ch3: PwmChannels<TIM1, C1>,
    ch4: PwmChannels<TIM1, C2>,
    ch5: PwmChannels<TIM1, C3>,
    ch6: PwmChannels<TIM1, C4>,
    ch7: PwmChannels<TIM2, C3>,
    ch8: PwmChannels<TIM2, C4>,
}

impl Servos {
    pub fn new(
        clocks: Clocks,
        tim1: TIM1,
        tim2: TIM2,
        tim3: TIM3,
        pb0: PB0<Alternate<AF2>>,
        pb1: PB1<Alternate<AF2>>,
        pe9: PE9<Alternate<AF1>>,
        pe11: PE11<Alternate<AF1>>,
        pe13: PE13<Alternate<AF1>>,
        pe14: PE14<Alternate<AF1>>,
        pb10: PB10<Alternate<AF1>>,
        pb11: PB11<Alternate<AF1>>,
    ) -> Self {
        let (mut ch1, mut ch2) = pwm::tim3(tim3, (pb0, pb1), clocks, SERVO_PWM_FREQUENCY);
        let (mut ch3, mut ch4, mut ch5, mut ch6) =
            pwm::tim1(tim1, (pe9, pe11, pe13, pe14), clocks, SERVO_PWM_FREQUENCY);
        let (mut ch7, mut ch8) = pwm::tim2(tim2, (pb10, pb11), clocks, SERVO_PWM_FREQUENCY);

        ch1.set_duty(ch1.get_max_duty() * 1000 / 20_000); // Motor off
        ch2.set_duty(ch2.get_max_duty() * 1500 / 20_000); // Servo centered
        ch3.set_duty(ch3.get_max_duty() * 1500 / 20_000); // Servo centered
        ch4.set_duty(ch4.get_max_duty() * 1500 / 20_000); // Servo centered

        // ch5.set_duty(ch5.get_max_duty() * 1500 / 20_000); // Servo centered
        // ch6.set_duty(ch6.get_max_duty() * 1500 / 20_000); // Servo centered
        // ch7.set_duty(ch7.get_max_duty() * 1500 / 20_000); // Servo centered
        // ch8.set_duty(ch8.get_max_duty() * 1500 / 20_000); // Servo centered

        ch1.enable();
        ch2.enable();
        ch3.enable();
        ch4.enable();
        // ch5.enable();
        // ch6.enable();
        // ch7.enable();
        // ch8.enable();

        Servos {
            ch1,
            ch2,
            ch3,
            ch4,
            ch5,
            ch6,
            ch7,
            ch8,
        }
    }
}
