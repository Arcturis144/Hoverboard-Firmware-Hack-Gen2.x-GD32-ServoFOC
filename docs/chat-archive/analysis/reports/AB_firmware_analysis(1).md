# Gyroor G5 OL20180703-V4 — Factory Firmware A/B Analysis

## Inputs
- A/master: `oriFW(1).bin` (64 KiB), SHA-256 `c0d45253cc601ba1bc2291f3493203122bd9f66237e942f42b293d08a7a50c13`
- B/slave: `oriFWB.bin` (64 KiB), SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`
- Architecture: GD32F130C8, Cortex-M3 / Thumb-2
- Flash base: `0x08000000`
- Initial SP: `0x20000A90`
- Reset vector: `0x08000171` -> entry at `0x08000170`

`oriFW(2).bin` is a byte-identical second read of A and validates the A dump. `oriFW2.bin` was excluded from this A/B comparison because it was later identified as another A-board read but does not match the verified A pair.

## Important correction: A and B are mostly the same program
A naive same-offset comparison reports 16,548 differing bytes, but that is misleading because small insertions/deletions shift subsequent code. Sequence alignment over the programmed 0x0000-0x7FFF area gives ~98.98% byte-level similarity.

The aligned edit set is small: roughly 328 inserted bytes, 314 deleted bytes and only a few short direct replacements in the first 32 KiB. This is consistent with closely related master/slave builds from a common source tree, not two unrelated firmwares.

## Vector table
The first 64 vector entries are identical between A and B. Important non-default handlers include:
- EXTI4_15-class IRQ: `0x080023D9`
- DMA-channel IRQ: `0x08002019`
- ADC/compare IRQ: `0x08000A59`
- advanced motor timer IRQ: `0x08005481`
- additional timer IRQs: `0x080054C1`, `0x080054F5`
- USART-class IRQ: `0x08005C85`

The identical vector table strongly indicates the same basic hardware/peripheral topology on both boards.

## Peripheral evidence from PC-relative literal loads
Both images contain direct references to the same GD32F130 peripherals:
- `0x40012400` — ADC
- `0x40012C00` — TIMER0 (advanced PWM timer)
- `0x40000400` — TIMER2
- `0x40013800` — USART0
- `0x40004400` — USART1
- `0x40020000` — DMA
- `0x40021000` — RCU/clock control
- `0x40022000` — FMC/flash controller
- `0x48000400` — GPIOB
- `0x48000800` — GPIOC

This is exactly the peripheral mix expected for BLDC PWM, ADC current/voltage measurement, Hall/edge inputs, UART master/slave communication and board housekeeping.

## Motor-control path appears largely shared
The ADC interrupt handler at `0x08000A58` and the timer handlers around `0x08005480`, `0x080054C0`, and `0x080054F4` are byte-identical in the sampled regions of A and B.

That is strong evidence that the low-level motor-control engine — ADC sampling, PWM timing/commutation timing and core traction control — is shared between master and slave.

## Master/slave differences cluster around I/O and communication
The handler at `0x08005C84`, associated with a USART-class interrupt, is extremely similar between A and B but the B image contains small extra state-handling instructions and address shifts. For example, B stores the literal value `2` into a RAM status byte near the end of the handler before calling the same downstream routine. This looks like role/state bookkeeping rather than a different UART driver.

The EXTI-class handler at `0x080023D8` differs more substantially between A and B. Because EXTI is normally used for GPIO edge inputs, this is a strong candidate for role-specific Hall/input/button/sensor handling. Exact signal identity still requires pin tracing or a decompiler/data-flow pass.

## End-of-image board-specific data
Both images have small non-0xFF blocks around `0x08007BFC-0x08007C13`, and the bytes differ between A and B. This region is not normal contiguous executable code and is likely board-specific configuration/calibration/identity data.

A data:
- starts at `0x08007BFC`
- last programmed byte at `0x08007C0E`

B data:
- starts at `0x08007C00`
- last programmed byte at `0x08007C13`

This region should be preserved independently when experimenting with reflashing.

## Four-wire master/slave cable
The modern Gen2.x source identifies the original master/slave 4-pin header as USART on PA2/PA3 and explicitly notes that the master/slave header also carries 5 V/15 V power. Therefore the observation that B only became accessible with the cable connected does not prove that a UART packet wakes it. The cable itself may provide the slave's logic/power-latch supply in addition to TX/RX/GND.

The next hardware test should be measuring all four cable pins relative to B ground with A powered but UART idle. If one conductor carries 5 V or another supply continuously, that explains the wake behavior without requiring a protocol command.

## IMU / mapping implication
No direct `0x40005400` or `0x40005800` I2C peripheral base literal was found in the initial literal-load pass. That does not prove there is no IMU: the code may use GPIO bit-banging, computed peripheral addresses, or an IMU on another board/module. The Gen2.x projects support multiple I2C IMUs and expose IMU telemetry, but the factory binary needs a deeper data-flow/decompiler pass before assigning an IMU bus confidently.

## Next reverse-engineering steps
1. Trace PA2/PA3 on both boards to the four-wire cable and confirm which GD32 USART instance it uses.
2. Measure the other two cable conductors to establish GND and the power/wake rail.
3. Load A and B into Ghidra as Cortex-M little-endian binaries at `0x08000000`, mark the vector table, and apply the GD32F130 peripheral map.
4. Label the known peripheral-access functions around the ADC/TIMER/USART literal references.
5. Cross-reference the EXTI handler and GPIOB/GPIOC reads to identify Hall and other external sensor pins.
6. Preserve the 0x7BFC/0x7C00 configuration blocks separately before replacing factory firmware.

