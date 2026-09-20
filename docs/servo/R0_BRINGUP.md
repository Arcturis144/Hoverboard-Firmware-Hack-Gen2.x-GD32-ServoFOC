# R0.1 first-flash bring-up image

R0.1 is the first ServoFOC image intended to be programmed onto the GD32F130C8 split controller hardware.

## Safety behavior

This build is intentionally non-driving.

`RemoteServo.c` forces speed and steer to zero, asserts the remote timeout, calls `SetBldcInput(0)`, and calls `SetEnable(RESET)` every update. Incoming UART [universal asynchronous receiver-transmitter] bytes are ignored. The existing PWM [pulse-width modulation] and ADC [analog-to-digital converter] infrastructure still initializes so timing and battery acquisition can be observed, but the motor bridge is not granted control authority.

This is a board bring-up image, not a motor-test image.

## Visible checks

`TEST_HALL2LED` is enabled for the ServoFOC build. The three status LEDs mirror the assumed Hall A/B/C inputs. With the motor unpowered by firmware, slowly rotating the wheel by hand should step through legal Hall combinations.

The normal startup melody remains a useful indication that the MCU [microcontroller unit], clock, watchdog, GPIO [general-purpose input/output], and main loop reached normal execution.

## SWD [serial wire debug] monitor

Watch the global `gServoBringup`.

Useful fields include uptime, PWM [pulse-width modulation] and ADC [analog-to-digital converter] interrupt rates, UART receive count, battery raw/value, Hall state/validity, both photo inputs, button/self-hold where present, and raw IMU [inertial measurement unit] accelerometer/gyro/temperature values.

`remote_timeout` should remain 1 and `drive_enabled` should remain 0.

R0.1 deliberately reports `0xFFFF` for `phase_a_adc_raw`, `phase_b_adc_raw`, and `pa6_adc_raw`. Their validity bits remain clear. They are not silently guessed or sampled through the old generic ADC [analog-to-digital converter] layout; they move into the R1 deterministic current/PA6 acquisition work.

## Build outputs

GitHub Actions builds both physical PCB variants on every `servo/**` push:

- `servo_G5_master`
- `servo_G5_slave`

Each workflow artifact contains `firmware.bin` for flashing and `firmware.elf` for symbols/source-level debugging.

For the first hardware attempt, flash only the binary matching the physical MASTER or SLAVE PCB variant.
