use core::slice;
use embedded_hal::blocking::i2c;

pub trait Device<REG> {
    type Error;
    fn write(&mut self, reg: REG, value: u8) -> Result<(), Self::Error>;
    fn read(&mut self, reg: REG) -> Result<u8, Self::Error>;
    fn reads(&mut self, reg: REG, output: &mut [u8]) -> Result<(), Self::Error>;
}

pub struct I2cDevice<I2C, E>
where
    I2C: i2c::Write<Error = E> + i2c::WriteRead<Error = E>,
{
    i2c: I2C,
    address: u8,
}

impl<I2C, E> I2cDevice<I2C, E>
where
    I2C: i2c::Write<Error = E> + i2c::WriteRead<Error = E>,
{
    pub fn new(i2c: I2C, address: u8) -> Self {
        Self { i2c, address }
    }
}

impl<I2C, REG, E> Device<REG> for I2cDevice<I2C, E>
where
    I2C: i2c::Write<Error = E> + i2c::WriteRead<Error = E>,
    REG: Into<u8>,
{
    type Error = E;

    fn write(&mut self, reg: REG, value: u8) -> Result<(), Self::Error> {
        self.i2c.write(self.address, &[reg.into(), value])
    }

    fn read(&mut self, reg: REG) -> Result<u8, Self::Error> {
        let mut value = 0u8;
        self.reads(reg, slice::from_mut(&mut value))?;
        Ok(value)
    }

    fn reads(&mut self, reg: REG, output: &mut [u8]) -> Result<(), Self::Error> {
        self.i2c
            .write_read(self.address, &[reg.into() | 0x80], output)
    }
}
