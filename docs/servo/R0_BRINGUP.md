# R0.1 first-flash bring-up image

R0.1 is the first ServoFOC image intended to be programmed onto the GD32F130C8 split controller hardware.

## Safety behavior

This build is intentionally non-driving.

`bRemoteTimeout` starts asserted in the passive build. After PWM [pulse-width modulation] initialization, R0.1 explicitly commands zero, clears the software bridge-enable state, and clears TIMER0's advanced-timer main-output enable before the startup melody/main loop. `RemoteServo.c` then continuously forces speed and steer to zero, asserts the remote timeout, calls `SetBldcInput(0)`, and calls `SetEnable(RESET)` every update. Incoming UART [universal asynchronous receiver-transmitter] bytes are ignored. The existing PWM [pulse-width modulation] and ADC [analog-to-digital converter] infrastructure still initializes so timing and battery acquisition can be observed, but the motor bridge is not granted control authority.

This is a board bring-up image, not a motor-test image.

## Visible checks

`TEST_HALL2LED` is enabled for the ServoFOC build. The three status LEDs mirror the assumed Hall A/B/C inputs. With the motor unpowered by firmware, slowly rotating the wheel by hand should step through legal Hall combinations.

The normal startup melody remains a useful indication that the MCU [microcontroller unit], clock, watchdog, GPIO [general-purpose input/output], and main loop reached normal execution.

The inherited broad I²C [inter-integrated circuit] address scanner/register dump is suppressed in `SERVO_BRINGUP_PASSIVE`. That legacy scanner writes register 0 while probing addresses, so it is inappropriate for a passive first-flash image. R0.1 initializes the known I²C [inter-integrated circuit] bus and IMU [inertial measurement unit] driver without performing that discovery sweep.

## SWD [serial wire debug] monitor

Watch the global `gServoBringup`.

Useful fields include uptime, PWM [pulse-width modulation] and ADC [analog-to-digital converter] interrupt rates, UART receive count, battery raw/value, Hall state/validity, both photo inputs, button/self-hold where present, and raw IMU [inertial measurement unit] accelerometer/gyro/temperature values.

`remote_timeout` should remain 1 and `drive_enabled` should remain 0.

R0.1 deliberately reports `0xFFFF` for `phase_a_adc_raw`, `phase_b_adc_raw`, and `pa6_adc_raw`. Their validity bits remain clear. They are not silently guessed or sampled through the old generic ADC [analog-to-digital converter] layout; they move into the R1 deterministic current/PA6 acquisition work.

## Build outputs

The root GitHub Actions firmware workflow was removed at `e4f0e27b07dab6e30a98e02dd6a7cc19baddca7e`; automatic artifacts are not currently produced by this branch. Build locally from `HoverBoardGigaDevice` with `pio run -e <environment>` for the required PCB [printed circuit board] variant:

- `servo_G5_master`
- `servo_G5_slave`

After a successful local build, expected outputs are `.pio/build/<environment>/firmware.bin` for flashing and `firmware.elf` for symbols/source-level debugging. Their existence and build success must be verified for the exact revision; this documentation audit did not generate binaries.

For the first hardware attempt, flash only the binary matching the physical MASTER or SLAVE PCB variant.
