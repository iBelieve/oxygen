#![deny(unsafe_code)]
#![no_main]
#![no_std]

extern crate panic_rtt_target;

use cortex_m_rt::entry;
use rtt_target::{rtt_init_print, rprintln};

#[entry]
fn main() -> ! {
    rtt_init_print!();
    rprintln!("Hello, world!");

    panic!("Yep, it crashes.");
}
