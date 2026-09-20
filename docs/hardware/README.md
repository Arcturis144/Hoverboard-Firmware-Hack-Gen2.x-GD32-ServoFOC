# Hardware notes

This directory documents physical board variants and measured hardware facts used by the servo firmware.

## Current first target

- Gyroor G5 Gen2 hoverboard controller
- OLSZ OL20180703-V4.1 family
- Gen2.x layout associated with 2.1.20
- GD32F130C8 MCU

The project has two related controller PCBs conventionally referred to as MASTER and SLAVE. Those names are retained because there are real hardware differences. In the servo application both boards are peer, independent servo axes.

## Evidence policy

Pin assignments and peripherals should be classified as one of:

- confirmed by schematic/documentation
- confirmed by source/layout definition
- measured on hardware
- provisional / requires validation

Do not promote a provisional identification into a confirmed one without evidence.

For example, a possible motor-temperature input discussed during development is not yet considered physically confirmed and must not be treated as such in production protection logic.

External repositories may corroborate a board-family feature, but external observations are not automatically promoted to measured facts for our exact PCB. The source and exact commit must be recorded in `docs/provenance/SOURCES.md`.

## External board-family corroboration

The hoverboardhavoc `hoverboard-gen2.1-hack-GD-imu` project at `14e01f24ee5f5df9393a89d0ead54363e3210e9b` explicitly targets a split ClassyWalk-style motherboard using a GD32F130C8 MCU [microcontroller unit]. It reports that the onboard IMU [inertial measurement unit] responds at I²C [inter-integrated circuit] address `0x68`, that raw motion data can be obtained with MPU6050-like handling, and that the MPU6050 DMP [digital motion processor] firmware path did not work reliably on the tested device. The same work found that explicit I²C [inter-integrated circuit] interrupt enables were required on that C8 setup.

The separate hoverboardhavoc `HoverboardImu` project at `b7682c98295b05ca43adcbd302954bd9134ecc0c` documents the device marking `16A / 3C6A / C3C` and raw register behavior at address `0x68`. This supports treating the device as MPU6050-compatible enough for raw accelerometer/gyro acquisition, while keeping the driver abstract and avoiding dependence on a genuine MPU6050 DMP [digital motion processor].

The hoverboardhavoc FOC [field-oriented control] branch independently corrected layout-2.1.20 phase-current pins to PB0 and PA0 in commit `68a60ef7d8b2b78e510abd1c045e1c277a15111c`. This is useful corroboration, but ServoFOC still requires measurement/trace confirmation before those inputs receive closed-loop control authority.

## RemoteAutodetect caution

The existing `RemoteAutodetect` code is a service/discovery framework, not a runtime hardware monitor. It deliberately changes GPIO [general-purpose input/output] modes, drives the motor in several stages, and was designed to work across many unknown board layouts. Its candidate-current logic must therefore be treated as a clue generator rather than physical truth.

For the 2.1.20 target, do not accept a generic autodetect `CURRENT_DC` result as proof of a DC [direct current] bus-current shunt. The known useful path is the two phase-current inputs plus separate battery sensing; PA6 remains provisional and diagnostic until the physical circuit and motor-side sensor are characterized.

## Future encoder inputs

Existing optical-switch connectors/pins may be good candidates for incremental encoder wiring because the electrical requirements are similar: sensor supply, ground, and digital edge inputs. This remains a hardware-validation item. Voltage levels, pull-ups, timer/input-capture capability, and MASTER/SLAVE pin differences must be confirmed before assigning those connectors to an encoder interface.

## Sensor model

The servo architecture should support independent rotor and axis sensors. Stock Hall sensors are the minimum supported source. Additional/repositioned Halls, an incremental encoder with index, an absolute magnetic encoder, or other feedback should be implementable behind sensor interfaces rather than embedded directly in the FOC algorithm.
