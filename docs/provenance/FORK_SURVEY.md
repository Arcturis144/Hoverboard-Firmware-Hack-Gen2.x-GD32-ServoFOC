# RoboDurden Gen2.x GD32 fork survey - 2026-09-19

This document records the GitHub fork-network/account survey requested for ServoFOC. The goal was not merely to find forks with different default branches, but to inspect non-default branches and other hoverboard/motor/robot repositories owned by the same accounts for reusable work.

Survey scope: 29 repositories returned by GitHub as forks/search matches for the RoboDurden Gen2.x GD32 code lineage, plus related repositories on those owners when they were relevant to motor control, IMU [inertial measurement unit], PlatformIO, RC [radio control], robotics, FOC [field-oriented control], or diagnostics.

Audit note (2026-09-21): this is a historical survey, not a fresh count of today's forks. [SOURCES.md](SOURCES.md) is the maintained project-wide inventory, including earlier conversation references, current dependency evidence and unresolved leads. Survey revisions below are not necessarily enforced build locks.

## High-value findings

| Source | Survey revision | Useful material | ServoFOC disposition |
| --- | --- | --- | --- |
| `hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32` | `foc-reimplement-from-spec-tidy` @ `7650dffafb5b1d3c816e22fff66ebf65ae7fb138` | Layout-2.1.20 two-shunt current path, PWM [pulse-width modulation]-relative sampling, Clarke/Park, SVPWM [space-vector pulse-width modulation], Hall PLL [phase-locked loop], PI [proportional-integral] current control, anti-windup, DTC [dead-time compensation], tests | Primary FOC [field-oriented control] implementation reference; selectively adapt and revalidate |
| `hoverboardhavoc/hoverboard-gen2.1-hack-GD-imu` | `14e01f24ee5f5df9393a89d0ead54363e3210e9b` | Split GD32F130C8 board-family IMU [inertial measurement unit], I²C [inter-integrated circuit] interrupt fix, PlatformIO build | High-value hardware/build corroboration |
| `hoverboardhavoc/HoverboardImu` | `b7682c98295b05ca43adcbd302954bd9134ecc0c` | Raw IMU [inertial measurement unit] probing at address `0x68`, device marking/register behavior | Raw-sensor reference; avoid relying on genuine MPU6050 DMP [digital motion processor] behavior |
| `hoverboardhavoc/gd32-pio-spl-package` | `8849cb2af35f16431734d9e9c101de648f54f061` | PlatformIO/GD32 SPL [standard peripheral library] clock-source override | Already selected as the build/framework dependency by platformio.ini; branch selector is floating, not locked to this survey revision |
| `hoverboardhavoc/regtrace` | `673e6b005c8272d0bf9ccd2b63938630ad4ab70e` | Register-level peripheral equivalence testing | Development/test validation tool |
| `WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32` | `debug-safety-limit` @ `32eafc60ae4377d24e3c7824f92bed0fd5fada89` | Command plausibility rejection and error counters | Adopt the safety pattern behind the common command validator |
| `Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32` | `spatialrag-agv` @ `4986a0e4de308b395b9bcce400c299c547e20985` | Last-valid-link age, master/slave diagnostics, host UART [universal asynchronous receiver-transmitter] parser/logger | Telemetry and communications reference |
| `Jodaille/hoverboard-sideboard-hack-GD` | `c063fdf2e1b0e11f2db70040c5e6d32e5b79019f` | iBUS [FlySky serial receiver protocol] packet parsing/checksum/timeout | Adapt for optional FS-iA6B input behind transport-neutral validation |
| `lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32` | `inserted_adc` @ `814efb694a7799d5d288394addb2f6aaf785de43` | Full RemoteAutodetect under 32 KiB, inserted ADC [analog-to-digital converter] work | Commissioning/timing reference; reject unverified generic current assumptions |
| `RobDoozer/gearsincorg-Hoverboard_Utility_Gateway_System` | `ed1358171c98c68bd7d82a76eb62f0c7c094a47b` | HUGS [Hoverboard Utility Gateway System] speed servo, Hall odometry, low-speed mode, watchdog, ESTOP [emergency stop], protocol | Servo/API [application programming interface] concept reference, not FOC [field-oriented control] core |
| `YujiKF/FirmwareHoverCR` | `38ef11167f3ceca300182e7c917558df0ea3487f` | ESP32 [Espressif 32-bit microcontroller] bridge, wireless remote, telemetry, timeout | Later host/wireless architecture reference |
| `adj00080/hoverboard-firmware-hack-FOC_ConeRobot` | `402a9e4a7aade0857c9c91b8e5be1c7d5872e5e8` | Many phase, ADC [analog-to-digital converter], PWM [pulse-width modulation], and ESP32 [Espressif 32-bit microcontroller] experiments | Troubleshooting evidence only |
| `filagyuri/hoverboard-firmware-hack-FOC-bbcar` | `d25088ae681434a1e3ee69cd3a6adfe35c431a56` | Input validity, mode switching, emergency handling, ADC [analog-to-digital converter] observations | Secondary safety/application reference |

## Direct fork-network inventory

The following repositories were included in the network/account pass. `No immediate unique target material` means the survey did not find a branch or neighboring repository that currently justifies importing code into ServoFOC; it does not mean the account has no useful history.

| Repository | Survey disposition |
| --- | --- |
| `0voltex0/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `Arcturis144/Hoverboard-Firmware-Hack-Gen2.x-GD32-ServoFOC` | This project |
| `Bluebuddy84/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Main fork not unique for ServoFOC; account also tracks EFeru FOC [field-oriented control] lineage |
| `DipFlip/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found in the surveyed branch set |
| `Erik-96/Hoverboard-Firmware-Hack-Gen2.x-GD32F103C8` | Different MCU [microcontroller unit] focus; account also contains older Gen2/HUGS [Hoverboard Utility Gateway System] lineage |
| `Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32` | High-value `spatialrag-agv` branch; see above |
| `Jodaille/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Main Gen2.x fork mostly follows upstream; related sideboard repository is high-value for iBUS [FlySky serial receiver protocol] |
| `MoltenHydrogen/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `RobDoozer/RoboDurden-Hoverboard-Firmware-Hack-Gen2.x-GD32` | Direct fork itself not the main target; related HUGS [Hoverboard Utility Gateway System] repository is useful |
| `Vicky-lp01/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32` | High-value safety/ROS2 [Robot Operating System 2] branches |
| `YujiKF/FirmwareHoverCR` | High-value host/wireless/telemetry architecture |
| `adj00080/Hoverboard-Firmware-Hack-Gen2.x-GD32-SPLIT` | Direct split fork plus related FOC [field-oriented control] ConeRobot experiments; troubleshooting reference |
| `filagyuri/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Main fork not primary; related FOC [field-oriented control], OpenMower, mower, and LiDAR [light detection and ranging] repositories provide application ideas |
| `gggfaffff/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `hexplode13/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Main fork not unique for ServoFOC; account also tracks EFeru FOC [field-oriented control] |
| `hiliving/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Highest-value account/branch set in this survey |
| `kneave/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `leideno/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Useful `inserted_adc` branch |
| `mike7442/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `nitelife-media/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `ntindle/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `russt6/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Useful historical evidence that RemoteAutodetect corrected a real layout/Hall mapping |
| `sergioshimura/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Direct fork not unique for our GD32F130 target; account also tracks MM32SPIN firmware |
| `thallesgate/Hoverboard-Firmware-Hack-Gen2.x-GD32` | Direct fork not primary; related Rodney robot/ROS [Robot Operating System] repositories are application-level references |
| `timtom04/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |
| `willhess92/Hoverboard-Firmware-Hack-Gen2.x-GD32` | No immediate unique target material found |

## Additional account repositories worth retaining

- `hoverboardhavoc/hoverboard-gen2.1-hack-GD-imu` - exact split-board-family IMU [inertial measurement unit]/PlatformIO work.
- `hoverboardhavoc/HoverboardImu` - raw IMU [inertial measurement unit] discovery.
- `hoverboardhavoc/gd32-pio-spl-package` - PlatformIO/GD32 SPL [standard peripheral library] support changes.
- `hoverboardhavoc/regtrace` - register-level validation framework.
- `hoverboardhavoc/Hoverboard-Firmware-Hack-Joystick-Controller` - Raspberry Pi/Linux bench controller with arming behavior.
- `Jodaille/hoverboard-sideboard-hack-GD` - iBUS [FlySky serial receiver protocol], IMU [inertial measurement unit], and PlatformIO patterns.
- `RobDoozer/gearsincorg-Hoverboard_Utility_Gateway_System` - HUGS [Hoverboard Utility Gateway System] robot/servo concepts.
- `WestlingPi/hoverboard-driver` - host ROS/odometry integration reference.
- `filagyuri/OpenMower` - mower safety/state-machine and system integration reference only; not a motor-control dependency.
- `filagyuri/mower` and `filagyuri/LiDAR_Mobile_robot` - application-level sensing/networking ideas only.

## Integration conclusions

ServoFOC should continue to own its persistent calibration, PA6 thermal characterization, fault architecture, commissioning state machine, and transport-independent command boundary. The fork survey reduces the amount of low-level code that must be rediscovered, but it does not provide a single complete firmware that matches the project requirements.

The practical reuse plan is: FOC [field-oriented control] math/timing/tests from hoverboardhavoc; exact board-family IMU [inertial measurement unit] and PlatformIO evidence from hoverboardhavoc; iBUS [FlySky serial receiver protocol] from Jodaille/EFeru; command plausibility/freshness from WestlingPi and Homobonus; RemoteAutodetect refinements from lucai11 and upstream; robot/servo protocol concepts from HUGS [Hoverboard Utility Gateway System]; and host/wireless tooling from hoverboardhavoc/YujiKF.

Before code is copied or adapted, the corresponding entry in `SOURCES.md` controls commit pinning, licensing review, and whether the result is an independent reimplementation or an attributed adaptation.
