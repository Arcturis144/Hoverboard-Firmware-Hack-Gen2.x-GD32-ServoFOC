# Gyroor G5 OL20180703-V4 factory firmware analysis

Analyzed images:
- A/master: `oriFW(1).bin`, SHA-256 `c0d45253cc601ba1bc2291f3493203122bd9f66237e942f42b293d08a7a50c13`
- B/slave: `oriFWB.bin`, SHA-256 `f13fad73f874c3e793f5a25dd98d1c9963c61a5af757a528dc51325c0e0272b6`

Both are 64 KiB GD32F130 images. The low-level hardware-control code is highly similar; role-specific differences are concentrated in startup/state/communications areas and a small tail configuration area near 0x08007C00.

## Confirmed from factory firmware

| Function | GPIO / peripheral | Evidence | A/B |
|---|---|---|---|
| Hall 1 | PC13 | GPIOC input bit 13 read as part of 3-bit Hall state | both |
| Hall 2 | PA1 | GPIOA input bit 1 read as part of 3-bit Hall state | both |
| Hall 3 | PC14 | GPIOC input bit 14 read as part of 3-bit Hall state | both |
| Motor PWM | PA8, PA9, PA10 | GPIOA pins 8/9/10 configured alternate function 2 as one 3-pin group | both |
| Motor PWM complementary | PB13, PB14, PB15 | GPIOB pins 13/14/15 configured alternate function 2 as one 3-pin group | both |
| Inter-board USART1 | PA2 TX / PA3 RX | GPIOA pins 2 and 3 configured AF1; USART1 peripheral base 0x40004400 is used | both |
| IMU software-I2C clock | PB6 | bit-banged GPIOB mask 0x40 is toggled as clock | both |
| IMU software-I2C data | PB7 | GPIOB mask 0x80 is read/written as data | both |
| IMU address | 0x68 | factory firmware reads 14 bytes beginning register 0x3B and writes registers 0x6B, 0x19, 0x1A, 0x1B, 0x1C | both |
| IMU processing | accel + gyro data path | periodic code calls the IMU read/processing routine, not merely dead library code | both |
| Button | PA12 | GPIOA bit 12 configured/read in startup/power state logic | both |
| Self-hold/latch | PB12 | GPIOB bit 12 configured as output and asserted during startup | both |
| ADC regular channels | ADC_IN0, ADC_IN8, ADC_IN6, ADC_IN4 | four-channel ADC sequence is explicitly configured | both |
| ADC pins implied | PA0, PB0, PA6, PA4 | GD32F130 ADC channel mapping | both |

## ADC interpretation

The factory firmware configures the ADC sequence in this order:
1. ADC channel 0 -> PA0
2. ADC channel 8 -> PB0
3. ADC channel 6 -> PA6
4. ADC channel 4 -> PA4

The current Gen2.1.20 definition maps PA0/PB0 as two phase-current sense inputs and PA4 as battery voltage. That leaves PA6 as an additional stock analog input whose exact function is not yet proven from static code alone.

## IMU conclusion

Both A and B contain and actively execute the same MPU60x0-style data path. The code:
- communicates at I2C address 0x68;
- reads 14 bytes from register 0x3B (Accel X/Y/Z, temperature, Gyro X/Y/Z layout);
- writes PWR_MGMT_1 (0x6B), SMPLRT_DIV (0x19), CONFIG (0x1A), GYRO_CONFIG (0x1B), and ACCEL_CONFIG (0x1C);
- uses PB6/PB7 as software I2C.

This is strong firmware-level evidence that each controller board is intended to have its own MPU6050/MPU6500-compatible 6-axis IMU, rather than only the master having one.

## Gen2.1.20 comparison

The factory map agrees with the RoboDurden Gen2.1.20/ClassyWalk layout on all high-value pins checked so far:
- Hall: PC13 / PA1 / PC14
- BLDC: PA8-PA10 + PB13-PB15
- USART1: PA2 / PA3
- IMU I2C: PB6 / PB7
- Button: PA12
- Self-hold: PB12
- Battery ADC: PA4
- phase-current ADC: PA0 / PB0

The board marking relationship (`OL20180703-V4` versus documented `0L20190703-V4.1`) plus this pin agreement makes Gen2.1.20 the strongest known layout match.

## Remaining unresolved items

- exact function of PA6 analog input;
- mapping/purpose of the second hardware USART (USART0) used by the stock firmware;
- exact purpose of all LEDs/photo/charge-state pins;
- electrical identity of all four wires in the A<->B harness (PA2, PA3 plus two power/ground/wake-related conductors);
- decoding of the small board-specific data block near 0x08007C00;
- exact master/slave packet format and which fields contain wheel/Hall/IMU state.
