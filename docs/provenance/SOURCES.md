# Source and provenance register

This file records upstream and reference sources used by the ServoFOC project. Before source code is adapted from any external project, record the exact repository, commit, role, and license status here.

The RoboDurden fork-network survey performed on 2026-09-19 is documented in `FORK_SURVEY.md`.

## Primary upstream

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x-GD32

- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Role: primary firmware upstream and architectural base
- License: GPL-3.0
- R0 baseline commit: `396a27be40599f6d73ce36eca15be8200df0ec72`
- Policy: preserve a clean merge path from upstream wherever practical

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x

- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x
- Role: layouts, manuals, historical/community hardware reference
- Policy: documentation/reference source, not the primary firmware tree

## Primary Gen2.x/layout-2.1.20 FOC [field-oriented control] reference

### hoverboardhavoc Hoverboard-Firmware-Hack-Gen2.x-GD32

- Repository: https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `foc-reimplement-from-spec-tidy`
- Survey head: `7650dffafb5b1d3c816e22fff66ebf65ae7fb138`
- Role: primary reference for layout-2.1.20 phase-current acquisition, PWM [pulse-width modulation]-relative sampling, Clarke/Park transforms, SVPWM [space-vector pulse-width modulation], Hall PLL [phase-locked loop]/sector learning, PI [proportional-integral] current control, anti-windup, DTC [dead-time compensation], host tests, and bench bring-up lessons
- Important commits:
  - `68a60ef7d8b2b78e510abd1c045e1c277a15111c` - correct layout-2.1.20 phase-current mapping to PB0/PA0
  - `b363f81522cfeb4ee0669b4da55b880f96f8ceac` - PWM [pulse-width modulation]-relative ADC [analog-to-digital converter] valley-trigger scaffolding
  - `5d21dbe536b186bb4bf37e56bf206f67a18fd431` - timer repetition-counter/update-event experiment
  - `d7162fb433446dc6b219d329249c096c03de51c7` - first greenfield FOC [field-oriented control] core with pure helpers/tests
  - `145674d49d60170646adcac19da0ff0a76debf05` - torque/current PI [proportional-integral] mode with anti-windup
  - `7650dffafb5b1d3c816e22fff66ebf65ae7fb138` - bench tuning and implementation notes
- License status: fork of the GPL-3.0 upstream; verify the branch/file headers before copying individual source
- Policy: reference/adapt selectively; do not cherry-pick wholesale and do not import motor-specific tuning constants as generic defaults

## Commissioning and autodetect references

### Upstream RemoteAutodetect

- Location: current RoboDurden Gen2.x GD32 source tree
- Role: service/commissioning discovery framework for candidate pins, Hall mapping/order, battery/button/LED discovery, and other unknown-board bring-up
- Policy: selected algorithms may be adapted into `CommissioningDiscovery`; the complete active state machine must not run during normal ServoFOC operation
- Layout-2.1.20 caution: generic `CURRENT_DC` discovery assumptions do not establish a real DC [direct current] bus-current shunt on our board and must not be allowed to classify PA6 without physical evidence

### lucai11 inserted_adc

- Repository: https://github.com/lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `inserted_adc`
- Commit: `814efb694a7799d5d288394addb2f6aaf785de43`
- Role: full RemoteAutodetect size reduction under 32 KiB and timer-triggered inserted ADC [analog-to-digital converter] reference
- License status: RoboDurden GPL-3.0 fork lineage; verify file headers before copying
- Policy: structural/timing reference only; board-generic current assumptions require independent validation

### russt6 layout-2.1.18 autodetect result

- Commit observed in the fork/upstream history: `c04d41a4df25516e4f84e6fe8e383482259ce09b`
- Role: evidence that `REMOTE_AUTODETECT` has been used to correct real Hall/layout definitions on physical hardware
- Policy: historical validation of the discovery concept, not a layout-2.1.20 pin source

## Board-family IMU [inertial measurement unit] and PlatformIO references

### hoverboardhavoc hoverboard-gen2.1-hack-GD-imu

- Repository: https://github.com/hoverboardhavoc/hoverboard-gen2.1-hack-GD-imu
- Commit: `14e01f24ee5f5df9393a89d0ead54363e3210e9b`
- Role: split ClassyWalk-style GD32F130C8 motherboard IMU [inertial measurement unit] and PlatformIO bring-up reference
- Useful findings: explicit I²C [inter-integrated circuit] interrupt enables were required on the tested C8 setup; MPU6050-like raw operation worked while the MPU6050 DMP [digital motion processor] path was disabled
- License status: derived from EFeru sideboard GPL-3.0 project; verify changed-file headers before copying
- Policy: external board-family corroboration until reproduced on our exact boards

### hoverboardhavoc HoverboardImu

- Repository: https://github.com/hoverboardhavoc/HoverboardImu
- Commit: `b7682c98295b05ca43adcbd302954bd9134ecc0c`
- Role: raw register-level investigation of the onboard IMU [inertial measurement unit] at I²C [inter-integrated circuit] address `0x68`, including device marking `16A / 3C6A / C3C`
- License status: no license conclusion recorded by this survey; use as behavioral/documentation reference unless licensing is clarified

### hoverboardhavoc gd32-pio-spl-package

- Repository: https://github.com/hoverboardhavoc/gd32-pio-spl-package
- Branch: `hoverboardhavoc/add__PIO_DONT_SET_CLOCK_SOURCE__`
- Commit: `8849cb2af35f16431734d9e9c101de648f54f061`
- Role: PlatformIO/GD32 SPL [standard peripheral library] packaging and clock-source override reference used by the C8 IMU [inertial measurement unit] project
- License status: package contains vendor/library material; verify component licenses before vendoring
- Policy: build-system reference; not a production dependency unless explicitly promoted

### hoverboardhavoc regtrace

- Repository: https://github.com/hoverboardhavoc/regtrace
- Commit: `673e6b005c8272d0bf9ccd2b63938630ad4ab70e`
- Role: peripheral-register trace comparison for GD32 SPL [standard peripheral library], libopencm3, and other implementations; relevant coverage includes timer, ADC [analog-to-digital converter], DMA [direct memory access], USART [universal synchronous/asynchronous receiver-transmitter], flash, watchdog, and clock setup
- License: MPL-2.0 [Mozilla Public License 2.0], per repository README
- Policy: development/test tool and validation reference, not firmware runtime code

## Command, failsafe, and telemetry references

### WestlingPi Gen2.x GD32 safety work

- Repository: https://github.com/WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `debug-safety-limit`
- Commit: `32eafc60ae4377d24e3c7824f92bed0fd5fada89`
- Role: command sanity/range checking, serial command-error counters, and fail-safe behavior
- Important behavior: implausible commands are forced to zero rather than merely clamped into a valid high command
- License status: RoboDurden GPL-3.0 fork lineage; verify changed-file headers before copying

### Homobonus spatialrag-agv

- Repository: https://github.com/Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `spatialrag-agv`
- Survey head: `4986a0e4de308b395b9bcce400c299c547e20985`
- Important commits:
  - `8144a0a7d208a9517fce4d6051d27a1ef30de5db` - master/slave direction/range fixes and last-valid-slave-link age telemetry
  - `4986a0e4de308b395b9bcce400c299c547e20985` - host UART [universal asynchronous receiver-transmitter] frame parser/logger for feedback and IMU [inertial measurement unit] telemetry
- Role: stale-link diagnostics, transport observability, and host parser reference
- License status: RoboDurden GPL-3.0 fork lineage; verify changed-file headers before copying

### Jodaille hoverboard-sideboard-hack-GD

- Repository: https://github.com/Jodaille/hoverboard-sideboard-hack-GD
- Commit: `c063fdf2e1b0e11f2db70040c5e6d32e5b79019f`
- Role: iBUS [FlySky serial receiver protocol] receive structure, checksum validation, channel decoding, and timeout-to-zero handling; also useful GD32F130 PlatformIO and IMU [inertial measurement unit] lineage
- License: GPL-3.0 per repository README
- Policy: adapt the protocol parser behind ServoFOC's transport-independent command validator rather than coupling iBUS [FlySky serial receiver protocol] directly to motor control

### hoverboardhavoc Hoverboard-Firmware-Hack-Joystick-Controller

- Repository: https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Joystick-Controller
- Commit: `93f132a3eb39c0af5e18d8c9c886e80da60e50ae`
- Role: Linux/Raspberry Pi bench joystick control, arming-button behavior, UART [universal asynchronous receiver-transmitter] command/telemetry host tool
- License status: not established by this survey; use as behavioral/tooling reference unless clarified

## Robot, servo API [application programming interface], and host-bridge references

### RobDoozer / HUGS [Hoverboard Utility Gateway System]

- Repository: https://github.com/RobDoozer/gearsincorg-Hoverboard_Utility_Gateway_System
- Commit: `ed1358171c98c68bd7d82a76eb62f0c7c094a47b`
- Lineage: fork of gearsincorg HUGS [Hoverboard Utility Gateway System], itself based on Gen2 firmware
- Role: split-board robot/assistive-device design, Hall odometry, linear speed servo, feed-forward plus PI [proportional-integral] regulation, low-speed sinusoidal stepping, watchdog, ESTOP [emergency stop], telemetry, and command protocol concepts
- License: source headers state GPL version 3 or later
- Policy: servo/API [application programming interface] concept reference; do not transplant its non-FOC [field-oriented control] motor-control core into ServoFOC

### YujiKF FirmwareHoverCR

- Repository: https://github.com/YujiKF/FirmwareHoverCR
- Commit: `38ef11167f3ceca300182e7c917558df0ea3487f`
- Role: ESP32 [Espressif 32-bit microcontroller] wireless bridge, command timeout, telemetry return, and remote-control architecture
- License status: not established by this survey; use as architecture/reference unless clarified

### adj00080 hoverboard-firmware-hack-FOC_ConeRobot

- Repository: https://github.com/adj00080/hoverboard-firmware-hack-FOC_ConeRobot
- Commit: `402a9e4a7aade0857c9c91b8e5be1c7d5872e5e8`
- Role: experimental phase/ADC [analog-to-digital converter]/PWM [pulse-width modulation]/ESP32 [Espressif 32-bit microcontroller] bring-up and troubleshooting history
- Policy: troubleshooting evidence only; do not import experimental tuning wholesale

### filagyuri hoverboard-firmware-hack-FOC-bbcar

- Repository: https://github.com/filagyuri/hoverboard-firmware-hack-FOC-bbcar
- Commit: `d25088ae681434a1e3ee69cd3a6adfe35c431a56`
- Role: input validity, drive-mode switching, emergency behavior, ADC [analog-to-digital converter] observations, and FOC [field-oriented control] application behavior
- License status: EFeru FOC [field-oriented control] fork lineage; verify exact file headers before copying

## Other FOC [field-oriented control] and commissioning references

### EFeru hoverboard-firmware-hack-FOC

- Repository: https://github.com/EFeru/hoverboard-firmware-hack-FOC
- Role: mature FOC [field-oriented control] behavior, protection, anti-windup, current limiting, regenerative braking, and commissioning reference
- Exact reference commit: TO BE PINNED before source adaptation

### EFeru bldc-motor-control-FOC

- Repository: https://github.com/EFeru/bldc-motor-control-FOC
- Role: control-algorithm/model reference
- Exact reference commit: TO BE PINNED before source adaptation

### miniFOC

- Repository: https://github.com/ZhuYanzhen1/miniFOC
- Role: GD32F130-class commissioning, alignment, phase-sequence detection, center-aligned PWM [pulse-width modulation], preload/shadow, ADC [analog-to-digital converter] current path, and fixed-point design reference
- License: AGPL-3.0 [GNU Affero General Public License 3.0]
- Exact reference commit: TO BE PINNED before source adaptation
- Policy: use concepts/tactics as design reference; do not casually copy AGPL [GNU Affero General Public License] source into the primary GPL [GNU General Public License] firmware tree

## Provenance rules

1. Reference repositories are not firmware dependencies unless explicitly promoted to that role.
2. Pin exact commits before adapting code or relying on behavior.
3. Keep copied/adapted code attribution and license obligations explicit.
4. Prefer independent implementation of concepts when license compatibility or architectural fit is uncertain.
5. Do not copy motor-specific calibration constants into generic defaults.
6. A source-reported hardware fact is not a measured fact for our exact PCB until reproduced or traced on the target.
7. Active discovery/autodetect algorithms belong in commissioning/service states; runtime monitoring should remain passive unless a specific low-energy startup test is documented and bounded.
