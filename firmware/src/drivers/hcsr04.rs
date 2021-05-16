use embedded_hal::digital::v2::OutputPin;
use crate::clock::Instant;
use embedded_hal::blocking::delay::DelayUs;
use core::fmt;

pub struct Millimeters(pub u32);

impl fmt::Display for Millimeters {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}mm", self.0)
    }
}

enum State {
    Idle,
    Triggered,
    EchoStarted(Instant),
}

#[derive(Debug)]
pub enum HcSr04Error<TriggerError> {
    TriggerError(TriggerError),
    InvalidState,
}

pub struct HcSr04<TriggerPin>
where
    TriggerPin: OutputPin,
{
    state: State,
    trigger_pin: TriggerPin,
}

impl<TriggerPin> HcSr04<TriggerPin>
where
    TriggerPin: OutputPin,
{
    pub fn new(mut trigger_pin: TriggerPin) -> Result<Self, TriggerPin::Error> {
        trigger_pin.set_low()?;
        Ok(Self {
            state: State::Idle,
            trigger_pin,
        })
    }

    pub fn trigger(&mut self, delay: &mut impl DelayUs<u8>) -> Result<(), HcSr04Error<TriggerPin::Error>> {
        if !matches!(self.state, State::Idle) {
            return Err(HcSr04Error::InvalidState);
        }

        self.state = State::Triggered;

        self.trigger_pin
            .set_high()
            .map_err(HcSr04Error::TriggerError)?;
        delay.delay_us(10);
        self.trigger_pin
            .set_low()
            .map_err(HcSr04Error::TriggerError)?;

        Ok(())
    }

    pub fn on_echo_start(
        &mut self,
        instant: Instant,
    ) -> Result<(), HcSr04Error<TriggerPin::Error>> {
        if !matches!(self.state, State::Triggered) {
            return Err(HcSr04Error::InvalidState);
        }

        self.state = State::EchoStarted(instant);

        Ok(())
    }

    pub fn on_echo_end(&mut self, instant: Instant) -> Result<Millimeters, HcSr04Error<TriggerPin::Error>> {
        let started = match self.state {
            State::EchoStarted(started) => started,
            _ => return Err(HcSr04Error::InvalidState)
        };
        let duration = instant - started;

        // Distance = seconds * 343.21 m/s * 0.5
        let dist_mm = Millimeters(duration.integer() * 171_605 * *duration.scaling_factor());

        self.state = State::Idle;

        Ok(dist_mm)
    }
}
