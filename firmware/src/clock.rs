use embedded_time::{clock::Error, Clock};
use stm32f7xx_hal::{pac::{RCC, TIM5}, rcc::Clocks, bb};
use embedded_time::fraction::Fraction;
use stm32f7xx_hal::time::Hertz;
use cast::{u16, u32};

pub type Instant = embedded_time::Instant<SysClock>;

pub struct SysClock {
    tim: TIM5,
}

impl SysClock {
    pub fn new(tim: TIM5, clocks: Clocks) -> Self {
        unsafe {
            //NOTE(unsafe) this reference will only be used for atomic writes with no side effects
            let rcc = &(*RCC::ptr());
            // Enable and reset the timer peripheral, it's the same bit position for both registers
            bb::set(&rcc.apb1enr, 3);

            // Stall the pipeline to work around erratum 2.1.13 (DM00037591)
            cortex_m::asm::dsb();

            bb::set(&rcc.apb1rstr, 3);
            bb::clear(&rcc.apb1rstr, 3);
        }

        tim.cr1.modify(|_, w| w.cen().clear_bit());
        tim.cnt.reset();

        let frequency = <Self as Clock>::SCALING_FACTOR.recip().to_integer();
        let pclk_mul = if clocks.ppre1() == 1 { 1 } else { 2 };
        let ticks = clocks.pclk1().0 * pclk_mul / frequency;

        let psc = u16((ticks - 1) / (1 << 16)).unwrap();
        tim.psc.write(|w| w.psc().bits(psc) );

        let arr = u16(ticks / u32(psc + 1)).unwrap();
        tim.arr.write(|w| unsafe { w.bits(u32(arr)) });

        // Trigger update event to load the registers
        tim.cr1.modify(|_, w| w.urs().set_bit());
        tim.egr.write(|w| w.ug().set_bit());
        tim.cr1.modify(|_, w| w.urs().clear_bit());

        tim.cr1.write(|w|
            w.cms().edge_aligned()
                .dir().up()
                .opm().disabled()
                .cen().enabled()
        );

        Self { tim }
    }
}

impl Clock for SysClock {
    type T = u32;

    const SCALING_FACTOR: Fraction = Fraction::new(1, 5_000);

    fn try_now(&self) -> Result<Instant, Error> {
        let ticks = self.tim.cnt.read().bits();
        Ok(Instant::new(ticks))
    }
}
