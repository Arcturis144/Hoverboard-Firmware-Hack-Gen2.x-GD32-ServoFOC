# Project reference inventory and provenance register

Last audited: 2026-09-21. Audited branch: `servo/r0-baseline`, source snapshot `e4f0e27b07dab6e30a98e02dd6a7cc19baddca7e`.

This is the project's maintained entry point for external repositories, inherited dependencies, design references, historical experiments, and unresolved source leads. Add new references here rather than relying on conversation memory. This document contains the recovered source inventory, including the complete recorded 29-entry fork-survey roster. [FORK_SURVEY.md](FORK_SURVEY.md) retains the dated survey narrative.

## Navigation

- [Evidence and coverage](#evidence-and-coverage)
- [A. What this branch currently uses](#a-what-this-branch-currently-uses)
- [B. What could be used next](#b-what-could-be-used-next)
- [Detailed source records](#primary-upstream)
- [Recovered references missing from the earlier register](#recovered-references-missing-from-the-earlier-register)
- [Diagnostics and development tools](#diagnostics-and-development-tools)
- [Adjacent applications and historical lineage](#adjacent-applications-and-historical-lineage)
- [Complete recorded fork roster](#complete-recorded-fork-roster)
- [Unresolved references and coverage gaps](#unresolved-references-and-coverage-gaps)
- [How to maintain this inventory](#how-to-maintain-this-inventory)

## Evidence and coverage

The audit combined the supplied planning-conversation continuation, targeted retrieval of older project conversations, all current planning/reference documents, the branch tree, build manifests, selected local source headers, and external repository metadata/readmes. Historical searches covered August hardware/radio-control discussions; September 5–15 monitoring, architecture and lineage; September 16–21 protocols, commissioning, PlatformIO and fork-survey discussions; and the adjacent joystick discussion.

**A complete verbatim conversation export was not available.** Retrieval can omit messages or return material from another thread. This inventory contains the references recovered and recorded by this audit, not a claim that every historical message has been exhaustively read. Names with unresolved identities are retained below. A future transcript pass should append omissions and update this coverage statement.

Evidence priority: inspected source/build configuration at an exact commit > current project documentation > external source's own claims > retrieved historical assistant claims. External hardware results are not measurements of our own board. This audit is a documentation/source-intake review, not a firmware build, hardware test, full license audit, or line-by-line review of every candidate.

Status meanings:

| Status | Meaning |
| --- | --- |
| BASE / INHERITED | Source is already present through the upstream codebase; not necessarily enabled in every build. |
| BUILD-SELECTED | An inspected build manifest selects this dependency. A floating branch is not an immutable pin. |
| TOOL-CONFIGURED | Tooling/source exists locally; successful execution on the current hardware is a separate question. |
| DESIGN-USED | Ideas already appear in our planning; source incorporation is not established. |
| CANDIDATE | A potentially useful source requiring scoped evaluation and provenance before adaptation. |
| HISTORICAL / ADJACENT | Retained for lineage, application design, or an earlier investigation. |
| UNRESOLVED | Identity, revision, license, relevance, or integration evidence remains incomplete. |

A survey commit identifies the revision previously examined. It does **not** prove that our build resolves to that revision. Unless explicitly stated otherwise, candidate records are not implementation claims, and their licenses must be checked at the selected revision before source copying.

## A. What this branch currently uses

| Source/component | Actual status and evidence | Revision / outstanding work |
| --- | --- | --- |
| [RoboDurden GD32 firmware](https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x-GD32) | BASE: firmware architecture, board layouts, sine backend, serial code, discovery and sensor utilities inherited by this fork. | Baseline `396a27be40599f6d73ce36eca15be8200df0ec72`; distinguish later local changes. |
| [CommunityGD32 platform](https://github.com/CommunityGD32Cores/platform-gd32) | BUILD-SELECTED by [platformio.ini](../../HoverBoardGigaDevice/platformio.ini), inherited by both servo environments. | Repository URL has no immutable revision suffix. Exact resolved package revision not captured by this audit. |
| [hoverboardhavoc GD32 library package](https://github.com/hoverboardhavoc/gd32-pio-spl-package) | BUILD-SELECTED as `framework-spl-gd32`; library code is used by the selected framework. It is not merely a proposed reference. | Selector is branch `hoverboardhavoc/add__PIO_DONT_SET_CLOCK_SOURCE__`; survey commit `8849cb2af35f16431734d9e9c101de648f54f061` is not enforced by the build. |
| GigaDevice device pack and Arm CMSIS [Common Microcontroller Software Interface Standard] | BUILD-SELECTED in the secondary [solution](../../HoverBoardGigaDevice/ServoFOC.csolution.yml) and [project](../../HoverBoardGigaDevice/ServoFOC.cproject.yml). | `GigaDevice::GD32F1x0_DFP@3.2.1` is selected; `ARM::CMSIS` has no version suffix. Do not conflate this pack with a separately cited firmware-library version. |
| Arm development artifacts | TOOL-CONFIGURED in [vcpkg-configuration.json](../../vcpkg-configuration.json). | Toolbox 2.14.0, CMake 3.31.5, Ninja 1.12.1, Armclang 6.23.0 are requested; installation/build success not established here. |
| OpenOCD [Open On-Chip Debugger] and SEGGER RTT [Real-Time Transfer] | TOOL-CONFIGURED: [RTT task](../../HoverBoardGigaDevice/add_RTT_task.py), [console](../../HoverBoardGigaDevice/add_RTT_console.py), and [SEGGER source](../../HoverBoardGigaDevice/Src/SEGGER_RTT.c) are present. | Task uses `tool-openocd`, ST-Link, `target/stm32f1x.cfg`, channel 0 / port 9090. The exact tool binary provenance and hardware validation remain open. |
| Inherited sensor code with EFeru / InvenSense / hoverboardhavoc attribution | INHERITED: [mpu6050.c](../../HoverBoardGigaDevice/Src/mpu6050.c) names those contributors; [bmi160.c](../../HoverBoardGigaDevice/Src/bmi160.c) names hoverboardhavoc. | Header evidence establishes attribution, not exact donor commit or activation of every driver. Do not describe all EFeru/hoverboardhavoc material as absent. |
| RemoteAutodetect | INHERITED source exists; DESIGN-USED for planned discovery. | The servo configuration selects `REMOTE_SERVO`, not `REMOTE_AUTODETECT`. Full active discovery is not the normal runtime monitor. |
| Our passive servo scaffold | Local code, not an external dependency: [configServo.h](../../HoverBoardGigaDevice/Inc/configServo.h), [RemoteServo.c](../../HoverBoardGigaDevice/Src/RemoteServo.c). | Selects `BLDC_SINE`, `REMOTE_SERVO`, `SERVO_BRINGUP_PASSIVE`; no accepted motion protocol in this scaffold. |

**Motor-control adoption boundary:** this branch does not select an EFeru, SimpleFOC, ODrive, VESC [Vedder Electronic Speed Controller], or hoverboardhavoc closed-loop FOC [field-oriented control] backend. Historical reports of an EFeru-generated core in a separate implementation package are not proof of incorporation here. Reconcile that package separately before changing this status. No completed motor-operation validation is claimed.

**Automation boundary:** the audited tree has no root `.github/workflows/` firmware workflow. Nested example-workflow files are not an active root workflow. Earlier documentation claiming automatic servo artifacts on every push was stale after the workflow-removal commit.

## B. What could be used next

These are review priorities, not approvals to replace the firmware or proof that a donor implementation is safe on our hardware.

| Need | First references to inspect | Useful scope and next acceptance check |
| --- | --- | --- |
| Current acquisition and FOC [field-oriented control] | hoverboardhavoc Gen2.x branch; EFeru firmware/model; SimpleFOC | Compare current scaling, Hall-angle handling, transforms, current-loop limits and tests. Prove sample timing, execution time, memory use and disabled-bridge behavior on GD32F130C8. |
| Discovery and Hall mapping | Inherited RemoteAutodetect; lucai11; russt6 history | Separate candidate discovery from validated mapping. Exclude unproven generic bus-current inference; bound excitation and save only validated results. |
| Motor identification and persistence | mianos/esp32foc; miniFOC; legacy ODrive | Compare resistance/inductance/inverter-drop methods and validation. Retain stored commissioning results; normal startup performs only justified sanity checks. |
| Low-speed servo, hold and haptics | HUGS [Hoverboard Utility Gateway System]; Bipropellant; ODrive; OFFBase; OpenFFBoard | Compare position accounting, loop separation, deadband and effect/drive boundaries. Do not transfer tuning values or desktop-facing effects into the fast motor loop. |
| Command validity and freshness | WestlingPi; Homobonus; Bipropellant protocol; VESC firmware | Evaluate framing, units, range rejection, timeout and state permission. Partial protocol compatibility must have an explicit supported-command contract. |
| FS-iA6B receiver | Jodaille and EFeru sideboard repositories | Adapt iBUS [FlySky serial receiver protocol] parsing behind the same command validator; test corruption, timeout and channel mapping. |
| Board sensors and build reproducibility | hoverboardhavoc sensor repositories; CommunityGD32 sources; regtrace | Reproduce external sensor observations, record package resolutions, and compare peripheral configuration before migration. |
| Monitoring and commissioning interface | Existing RTT [Real-Time Transfer]; Homobonus logger; PlotJuggler; MCUViewer; SimpleFOC monitoring | Use bounded controller-owned telemetry; keep presentation and flash/configuration work outside the fast control path. |
| Mower/robot or joystick application | Adjacent sources below | Keep navigation, tank mixing and force-effect generation in the supervisor. Use application experience without inheriting unrelated motor-board assumptions. |

## Primary upstream

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x-GD32

- Status: BASE / INHERITED.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Role: primary firmware upstream and architectural base
- License: GPL-3.0
- R0 baseline commit: `396a27be40599f6d73ce36eca15be8200df0ec72`
- Policy: preserve attribution and the ability to compare upstream. All project writes target the Arcturis144 repository; upstream pull requests require an explicit request.

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x

- Status: HISTORICAL hardware/documentation reference.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x
- Role: layouts, manuals, historical/community hardware reference
- Policy: documentation/reference source, not the primary firmware tree

## Primary Gen2.x/layout-2.1.20 FOC [field-oriented control] reference

### hoverboardhavoc Hoverboard-Firmware-Hack-Gen2.x-GD32

- Status: DESIGN-USED / CANDIDATE for the named FOC [field-oriented control] branch; inherited contributions elsewhere must be tracked separately.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
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

- Status: INHERITED source / DESIGN-USED; not selected as the servo remote.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Location: current RoboDurden Gen2.x GD32 source tree
- Role: service/commissioning discovery framework for candidate pins, Hall mapping/order, battery/button/LED discovery, and other unknown-board bring-up
- Policy: selected algorithms may be adapted into `CommissioningDiscovery`; the complete active state machine must not run during normal ServoFOC operation
- Layout-2.1.20 caution: generic `CURRENT_DC` discovery assumptions do not establish a real DC [direct current] bus-current shunt on our board and must not be allowed to classify PA6 without physical evidence

### lucai11 inserted_adc

- Status: DESIGN-USED / CANDIDATE; no incorporation established.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `inserted_adc`
- Commit: `814efb694a7799d5d288394addb2f6aaf785de43`
- Role: full RemoteAutodetect size reduction under 32 KiB and timer-triggered inserted ADC [analog-to-digital converter] reference
- License status: RoboDurden GPL-3.0 fork lineage; verify file headers before copying
- Policy: structural/timing reference only; board-generic current assumptions require independent validation

### russt6 layout-2.1.18 autodetect result

- Status: HISTORICAL evidence.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Commit observed in the fork/upstream history: `c04d41a4df25516e4f84e6fe8e383482259ce09b`
- Role: evidence that `REMOTE_AUTODETECT` has been used to correct real Hall/layout definitions on physical hardware
- Policy: historical validation of the discovery concept, not a layout-2.1.20 pin source

## Board-family IMU [inertial measurement unit] and PlatformIO references

### hoverboardhavoc hoverboard-gen2.1-hack-GD-imu

- Status: DESIGN-USED / CANDIDATE; inherited sensor attribution exists, exact donor history still needs mapping.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/hoverboardhavoc/hoverboard-gen2.1-hack-GD-imu
- Commit: `14e01f24ee5f5df9393a89d0ead54363e3210e9b`
- Role: split ClassyWalk-style GD32F130C8 motherboard IMU [inertial measurement unit] and PlatformIO bring-up reference
- Useful findings: explicit I²C [inter-integrated circuit] interrupt enables were required on the tested C8 setup; MPU6050-like raw operation worked while the MPU6050 DMP [digital motion processor] path was disabled
- License status: derived from EFeru sideboard GPL-3.0 project; verify changed-file headers before copying
- Policy: external board-family corroboration until reproduced on our exact boards

### hoverboardhavoc HoverboardImu

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/hoverboardhavoc/HoverboardImu
- Commit: `b7682c98295b05ca43adcbd302954bd9134ecc0c`
- Role: raw register-level investigation of the onboard IMU [inertial measurement unit] at I²C [inter-integrated circuit] address `0x68`, including device marking `16A / 3C6A / C3C`
- License status: no license conclusion recorded by this survey; use as behavioral/documentation reference unless licensing is clarified

### hoverboardhavoc gd32-pio-spl-package

- Status: BUILD-SELECTED.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/hoverboardhavoc/gd32-pio-spl-package
- Branch: `hoverboardhavoc/add__PIO_DONT_SET_CLOCK_SOURCE__`
- Commit: `8849cb2af35f16431734d9e9c101de648f54f061`
- Role: PlatformIO/GD32 SPL [standard peripheral library] packaging and clock-source override; also already selected by this branch's framework configuration.
- License status: package contains vendor/library material; verify component licenses before vendoring
- Policy: current build/framework dependency. The branch selector is floating; the recorded survey commit is not an enforced build pin. Record the actual resolved revision and validate before changing or pinning it.

### hoverboardhavoc regtrace

- Status: CANDIDATE development tool; not configured by this branch.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/hoverboardhavoc/regtrace
- Commit: `673e6b005c8272d0bf9ccd2b63938630ad4ab70e`
- Role: peripheral-register trace comparison for GD32 SPL [standard peripheral library], libopencm3, and other implementations; relevant coverage includes timer, ADC [analog-to-digital converter], DMA [direct memory access], USART [universal synchronous/asynchronous receiver-transmitter], flash, watchdog, and clock setup
- License: MPL-2.0 [Mozilla Public License 2.0], per repository README
- Policy: development/test tool and validation reference, not firmware runtime code

## Command, failsafe, and telemetry references

### WestlingPi Gen2.x GD32 safety work

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `debug-safety-limit`
- Commit: `32eafc60ae4377d24e3c7824f92bed0fd5fada89`
- Role: command sanity/range checking, serial command-error counters, and fail-safe behavior
- Important behavior: implausible commands are forced to zero rather than merely clamped into a valid high command
- License status: RoboDurden GPL-3.0 fork lineage; verify changed-file headers before copying

### Homobonus spatialrag-agv

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Branch: `spatialrag-agv`
- Survey head: `4986a0e4de308b395b9bcce400c299c547e20985`
- Important commits:
  - `8144a0a7d208a9517fce4d6051d27a1ef30de5db` - master/slave direction/range fixes and last-valid-slave-link age telemetry
  - `4986a0e4de308b395b9bcce400c299c547e20985` - host UART [universal asynchronous receiver-transmitter] frame parser/logger for feedback and IMU [inertial measurement unit] telemetry
- Role: stale-link diagnostics, transport observability, and host parser reference
- License status: RoboDurden GPL-3.0 fork lineage; verify changed-file headers before copying

### Jodaille hoverboard-sideboard-hack-GD

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/Jodaille/hoverboard-sideboard-hack-GD
- Commit: `c063fdf2e1b0e11f2db70040c5e6d32e5b79019f`
- Role: iBUS [FlySky serial receiver protocol] receive structure, checksum validation, channel decoding, and timeout-to-zero handling; also useful GD32F130 PlatformIO and IMU [inertial measurement unit] lineage
- License: GPL-3.0 per repository README
- Policy: adapt the protocol parser behind ServoFOC's transport-independent command validator rather than coupling iBUS [FlySky serial receiver protocol] directly to motor control

### hoverboardhavoc Hoverboard-Firmware-Hack-Joystick-Controller

- Status: CANDIDATE host tool.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Joystick-Controller
- Commit: `93f132a3eb39c0af5e18d8c9c886e80da60e50ae`
- Role: Linux/Raspberry Pi bench joystick control, arming-button behavior, UART [universal asynchronous receiver-transmitter] command/telemetry host tool
- License status: not established by this survey; use as behavioral/tooling reference unless clarified

## Robot, servo API [application programming interface], and host-bridge references

### RobDoozer / HUGS [Hoverboard Utility Gateway System]

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/RobDoozer/gearsincorg-Hoverboard_Utility_Gateway_System
- Commit: `ed1358171c98c68bd7d82a76eb62f0c7c094a47b`
- Lineage: fork of gearsincorg HUGS [Hoverboard Utility Gateway System], itself based on Gen2 firmware
- Role: split-board robot/assistive-device design, Hall odometry, linear speed servo, feed-forward plus PI [proportional-integral] regulation, low-speed sinusoidal stepping, watchdog, ESTOP [emergency stop], telemetry, and command protocol concepts
- License: source headers state GPL version 3 or later
- Policy: servo/API [application programming interface] concept reference; do not transplant its non-FOC [field-oriented control] motor-control core into ServoFOC

### YujiKF FirmwareHoverCR

- Status: CANDIDATE host architecture.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/YujiKF/FirmwareHoverCR
- Commit: `38ef11167f3ceca300182e7c917558df0ea3487f`
- Role: ESP32 [Espressif 32-bit microcontroller] wireless bridge, command timeout, telemetry return, and remote-control architecture
- License status: not established by this survey; use as architecture/reference unless clarified

### adj00080 hoverboard-firmware-hack-FOC_ConeRobot

- Status: HISTORICAL / CANDIDATE troubleshooting reference.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/adj00080/hoverboard-firmware-hack-FOC_ConeRobot
- Commit: `402a9e4a7aade0857c9c91b8e5be1c7d5872e5e8`
- Role: experimental phase/ADC [analog-to-digital converter]/PWM [pulse-width modulation]/ESP32 [Espressif 32-bit microcontroller] bring-up and troubleshooting history
- Policy: troubleshooting evidence only; do not import experimental tuning wholesale

### filagyuri hoverboard-firmware-hack-FOC-bbcar

- Status: CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/filagyuri/hoverboard-firmware-hack-FOC-bbcar
- Commit: `d25088ae681434a1e3ee69cd3a6adfe35c431a56`
- Role: input validity, drive-mode switching, emergency behavior, ADC [analog-to-digital converter] observations, and FOC [field-oriented control] application behavior
- License status: EFeru FOC [field-oriented control] fork lineage; verify exact file headers before copying

## Other FOC [field-oriented control] and commissioning references

### EFeru hoverboard-firmware-hack-FOC

- Status: DESIGN-USED / CANDIDATE motor backend; separate-package integration claims do not establish use on this branch.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/EFeru/hoverboard-firmware-hack-FOC
- Role: mature FOC [field-oriented control] behavior, protection, anti-windup, current limiting, regenerative braking, and commissioning reference
- Exact reference commit: TO BE PINNED before source adaptation

### EFeru bldc-motor-control-FOC

- Status: CANDIDATE model/algorithm reference.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/EFeru/bldc-motor-control-FOC
- Role: control-algorithm/model reference
- Exact reference commit: TO BE PINNED before source adaptation

### miniFOC

- Status: DESIGN-USED / CANDIDATE.
- Evidence: retained source record from the existing planning documents; external implementation details were not re-audited line by line in this pass.
- Repository: https://github.com/ZhuYanzhen1/miniFOC
- Role: GD32F130-class commissioning, alignment, phase-sequence detection, center-aligned PWM [pulse-width modulation], preload/shadow, ADC [analog-to-digital converter] current path, and fixed-point design reference
- License: AGPL-3.0 [GNU Affero General Public License 3.0]
- Exact reference commit: TO BE PINNED before source adaptation
- Policy: use concepts/tactics as design reference; do not casually copy AGPL [GNU Affero General Public License] source into the primary GPL [GNU General Public License] firmware tree

## Recovered references missing from the earlier register

### SimpleFOC

- Repository: https://github.com/simplefoc/Arduino-FOC
- Status: CANDIDATE.
- Evidence: September 12 external-source planning; September 21 omission audit. Current repository README reviewed.
- Potential use: Sensor/driver separation, current-sense alignment, torque/velocity/position control, commissioning examples and monitoring.
- Boundary / next review: No target port or replacement is selected. Inspect hardware-specific sampling and timer implementation, code size and control-loop cost before claiming GD32F130C8 support.
- Revision: Unselected; select a release/commit for a focused review.
- License / reuse: README declares MIT [Massachusetts Institute of Technology] license; verify selected files and revision before adaptation.

### mianos motor-identification reference

- Repository: https://github.com/mianos/esp32foc
- Status: DESIGN-USED / CANDIDATE.
- Evidence: September 18 commissioning discussion and supplied continuation; current README reviewed.
- Potential use: Motor winding resistance, inductance, inverter voltage-drop estimation, persisted results, alignment and fast/slow work separation informed R5 planning.
- Boundary / next review: It is open-loop V/Hz [volts per hertz], not a closed-loop FOC [field-oriented control] donor. Validate winding convention, excitation limits, measurement error, timer sampling and temperature effects. Espressif-specific execution claims do not automatically apply to GD32.
- Revision: Unselected; the discussion's exact reviewed commit was not preserved.
- License / reuse: Earlier review found no clear license; status remains unresolved. Use as a conceptual reference until reuse rights are established.

### VESC firmware

- Repository: https://github.com/vedderb/bldc
- Status: DESIGN-USED / CANDIDATE.
- Evidence: September 12 architecture and September 16 protocol discussion; repository and README checked.
- Potential use: Motor configuration and fault models, thermal/current limits, diagnostics and a possible compact subset of the command protocol; earlier discussion explicitly cited datatypes.h.
- Boundary / next review: Review exact command framing and units. No full protocol compatibility or firmware port is implemented. Evaluate GET_VALUES, SET_CURRENT, SET_CURRENT_BRAKE, SET_RPM, ALIVE and any custom command separately rather than assuming compatibility.
- Revision: Unselected; pin the protocol and firmware revision together.
- License / reuse: README declares GPL-3.0 [GNU General Public License 3.0]; check individual files and components.

### ODrive legacy firmware

- Repository: https://github.com/odriverobotics/ODrive
- Status: DESIGN-USED / CANDIDATE.
- Evidence: September 12 servo/protocol discussion; current README reviewed.
- Potential use: Axis state, calibration persistence, servo loop organization, diagnostics, and possible CANSimple [Controller Area Network Simple protocol] or serial command semantics.
- Boundary / next review: The public source covers legacy v3.x and is no longer actively developed according to its README. New-generation firmware is not publicly provided there. Protocol ideas do not establish hardware transport availability or compatibility on this board.
- Revision: Unselected; identify a legacy revision and matching protocol documentation.
- License / reuse: Verify the selected revision and component licenses before adaptation.

### OpenFFBoard

- Repository: https://github.com/Ultrawipf/OpenFFBoard
- Status: CANDIDATE.
- Evidence: September 12 external-reference planning; current README reviewed.
- Potential use: Force-feedback effect/driver separation, encoder abstractions, configurable command interfaces, and supervisory integration with servo drives.
- Boundary / next review: Use primarily above the motor-control loop. Its supported hardware and motor-driver interfaces do not establish a GD32F130C8 port. Audit per-file licenses and resource requirements.
- Revision: Unselected.
- License / reuse: README explicitly distinguishes component licenses; check exact files.

### OFFBase

- Repository: https://github.com/LiuIAMe/OFFBase
- Status: CANDIDATE.
- Evidence: Exact URL recovered from September 12 deadband discussion; current README reviewed during this audit.
- Potential use: Current-control deadband, torque-command pipeline, saved calibration, thermal configuration and host diagnostics are review targets.
- Boundary / next review: Current README titles the project Odrive-Wheel and links eagabriel/Odrive-Wheel. Preserve the originally cited repository identity. Its reported deadband is an external design example, not a validated setting for our controller; assess loss of small-signal torque response.
- Revision: Unselected; inspect exact implementation before adopting behavior.
- License / reuse: README describes mixed ODrive/OpenFFBoard/local licensing; verify selected source.

### Bipropellant firmware

- Repository: https://github.com/bipropellant/bipropellant-hoverboard-firmware
- Status: CANDIDATE.
- Evidence: September 12 architecture/provenance discussion; current README reviewed.
- Potential use: Hall-derived position and speed control, separate protocol component, parameter persistence, and robot command/diagnostic organization.
- Boundary / next review: Different board/firmware architecture; use selectively for servo and protocol concepts. Do not equate its duty command with a calibrated torque command.
- Revision: Unselected.
- License / reuse: Not verified in this audit.

### Bipropellant protocol

- Repository: https://github.com/bipropellant/bipropellant-protocol
- Status: CANDIDATE.
- Evidence: Separate protocol component explicitly discussed September 12; current README reviewed.
- Potential use: Separate machine-oriented binary and interactive text control on a serial link.
- Boundary / next review: Evaluate framing, sequencing, checksum, recovery and timeout behavior against our validator. Treat human diagnostic commands as state-restricted service operations.
- Revision: Unselected.
- License / reuse: Not verified in this audit.

### CommunityGD32 platform

- Repository: https://github.com/CommunityGD32Cores/platform-gd32
- Status: BUILD-SELECTED.
- Evidence: September 18 build discussion; current local platformio.ini and external README inspected.
- Potential use: Existing primary PlatformIO platform for both servo hardware variants; target definitions and build/tool integration.
- Boundary / next review: Record resolved platform revision and transitive packages. The current selector is unpinned; do not describe a reference commit as a reproducible build lock.
- Revision: Floating repository URL in platformio.ini.
- License / reuse: Verify platform scripts and bundled/transitive package licenses separately.

### CommunityGD32 vendor firmware mirror

- Repository: https://github.com/CommunityGD32Cores/GD32Firmware
- Status: HISTORICAL / CANDIDATE vendor reference.
- Evidence: Earlier implementation/build discussion recovered an exact commit; current README distinguishes main and patched branches.
- Potential use: Compare GD32F1x0 peripheral headers, startup and support library behavior against our actual selected framework and secondary pack.
- Boundary / next review: Do not claim the mirror is the primary build dependency or that the historical library version equals device-pack version 3.2.1. Trace exact file origins where needed.
- Revision: Historical reference: 4005bb036172cf671976df6160b828a3ee6e738e, identified in prior discussion with firmware library V3.2.0; not revalidated file by file here.
- License / reuse: Vendor/component terms require verification before copying.

### Earlier PlatformIO GD32F130 example

- Repository: https://github.com/maxgerhardt/pio-gd32f130c6
- Status: HISTORICAL / CANDIDATE.
- Evidence: September 18 explicit link; repository metadata and README inspected.
- Potential use: A minimal historical GD32F130 build example for comparing toolchain, startup, linker and clock choices.
- Boundary / next review: Repository is archived. It is not the selected platform or a proven current build for our board. Prefer the actual selected configuration when resolving discrepancies.
- Revision: Unselected.
- License / reuse: Not verified in this audit.

### EFeru GD32 sideboard upstream

- Repository: https://github.com/EFeru/hoverboard-sideboard-hack-GD
- Status: CANDIDATE / lineage reference.
- Evidence: EFeru sideboard lineage was discussed alongside Jodaille and hoverboardhavoc; upstream README inspected.
- Potential use: Receiver parsing and sensor/communications lineage; compare against the two already recorded forks to identify the actual origin of adapted work.
- Boundary / next review: A small sideboard is not the same hardware as the split motor controller. Preserve pin/voltage/peripheral distinctions and map donor commits before reuse.
- Revision: Unselected; compare against Jodaille c063fdf2e1b0e11f2db70040c5e6d32e5b79019f.
- License / reuse: README declares GPL-3.0 [GNU General Public License 3.0]; check changed files.

### FFBeast documentation and distributions

- Repository: https://github.com/ffbeast/ffbeast.github.io
- Status: CANDIDATE documentation/behavior reference.
- Evidence: FFBeast was named in September 12 planning; repository identity resolved during omission audit, with documentation and binary archives observed.
- Potential use: Force-feedback setup, hardware arrangements, calibration workflow and expected application behavior.
- Boundary / next review: Public documentation, mechanical assets and firmware archives are not proof of reusable firmware source. Inspect the actual asset license and availability; no firmware-source adoption is claimed.
- Revision: Unselected.
- License / reuse: Rights to documentation/assets/firmware must be established separately.

## Diagnostics and development tools

These records distinguish available tooling from hardware-proven tooling. Unless a row says otherwise, no exact version or license review is complete and no firmware dependency is created.

| Repository/tool | Status and origin | Potential use / verification still needed |
| --- | --- | --- |
| [STMicroelectronics/OpenOCD](https://github.com/STMicroelectronics/OpenOCD) | CANDIDATE source reference cited in the PlatformIO discussion; OpenOCD [Open On-Chip Debugger] is already TOOL-CONFIGURED locally. | Identify the actual packaged executable before attributing it to this fork. Confirm GD32 target identification, flash geometry, halt/resume and live access on hardware. |
| [pyocd/pyOCD](https://github.com/pyocd/pyOCD) | HISTORICAL alternative from September 10 tooling discussion; repository identity verified now. | Check actual device-pack/probe support before choosing it over the existing debug path. No use by the inspected primary build is established. |
| [stlink-org/stlink](https://github.com/stlink-org/stlink) | Historical STLink tools were discussed; this repository identity was resolved now. The inherited macOS build environment calls an external st-flash executable. | Flash/recovery alternative; verify installed version and target support. The identity of the bundled Windows st-flash.exe was not traced to an exact source revision. |
| [PlotJuggler/PlotJuggler](https://github.com/PlotJuggler/PlotJuggler) | CANDIDATE from September 5–6 telemetry discussions; current README reviewed. | Recorded/live telemetry graphs, overlays and derived signals. Define a bounded export/stream format and matching version; no host integration is claimed. |
| [klonyyy/MCUViewer](https://github.com/klonyyy/MCUViewer) | CANDIDATE named in inherited ai_guidelines_v1.md; repository identity and README resolved now. | Live variable/trace investigation. README says public source is release 1.1.0 and newer MCUViewer is closed-source; do not conflate versions or promise trace capability on this target. |
| [vedderb/vesc_tool](https://github.com/vedderb/vesc_tool) | ADJACENT tool for the VESC [Vedder Electronic Speed Controller] protocol/reference family; identity verified now. | Configuration and telemetry interface comparison. No compatibility with our scaffold exists; do not promise that a small protocol subset will support the complete tool. |
| [libopencm3/libopencm3](https://github.com/libopencm3/libopencm3) | INDIRECT reference named through regtrace's comparison work; identity verified now. | Compare peripheral behavior if evaluating a driver migration. It is not our selected peripheral library. |
| SEGGER RTT [Real-Time Transfer] | INHERITED source at HoverBoardGigaDevice/Src/SEGGER_RTT.c, .h and _Conf.h; source header inspected. | Preserve attribution and file terms. Header reports 8.62; do not equate that with an installed probe/software package version. |
| Keil Studio / Keil uVision / Arm toolchain | TOOL-CONFIGURED secondary route through solution/project files and vcpkg-configuration.json. | Keep as parity/debug references. Existing manifests do not prove that a build or hardware-debug session passed. |
| STM32CubeIDE / STM32CubeMonitor / STM32CubeProgrammer / STMStudio | HISTORICAL tools; CubeIDE/Monitor/Programmer recovered from earlier hardware work, STMStudio named by inherited guidelines. | Retain for live monitoring and recovery context. Exact versions, installation state and source repositories unresolved; these names are not source-reuse grants. |
| GDB [GNU Debugger] / GCC [GNU Compiler Collection] | Build/debug tool families discussed historically. | Record the actual compiler/debugger binaries, versions and package resolutions with a build report. No exact donor repository was recovered. |
| CMSIS [Common Microcontroller Software Interface Standard] Toolbox / CMake / Ninja | TOOL-CONFIGURED via the Arm artifact registry in vcpkg-configuration.json. | Current requested versions are in section A. Historical repository identities were not supplied; retain package identifiers rather than inventing source pins. |
| SimpleFOC monitoring / SimpleFOC Studio | CANDIDATE companion capabilities found in the current SimpleFOC README, not recovered as a separate earlier planning decision. | Evaluate the host/command model after selecting the controller's telemetry boundary; no separate Studio repository/version has been selected. |

## Adjacent applications and historical lineage

These are retained so earlier research is searchable. Inclusion is not a decision to add navigation, game effects, another operating system, or another motor stack to the servo firmware. Unless explicitly stated, exact revisions and licenses are unreviewed.

| Repository | Evidence / status | What could be used, and scope limit |
| --- | --- | --- |
| [krisstakos/Hoverboard-Firmware-Hack-Gen2.1](https://github.com/krisstakos/Hoverboard-Firmware-Hack-Gen2.1) | HISTORICAL lineage documented in local ai_guidelines.md and recovered September 12 discussion; identity verified. | Original split-board architecture and historical Bluetooth code context. Compare historical changes; do not restore old core code wholesale. |
| [flo199213/Hoverboard-Firmware-Hack-Gen2](https://github.com/flo199213/Hoverboard-Firmware-Hack-Gen2) | August 25–27 hardware and radio-control discussions; identity verified. | Earlier split-board schematics, programming and input-control references. Board-family resemblance does not confirm our exact pin map. |
| [Zando777/AutoMo](https://github.com/Zando777/AutoMo) | ADJACENT August mower discussion; current README reviewed. | Hoverboard motor/odometry integration with a supervisory computer and controller. Its navigation/cutting system belongs above our drive boundary. |
| [MackaJunest/Ez-Force-Feedback](https://github.com/MackaJunest/Ez-Force-Feedback) | ADJACENT September 20 joystick conversation; current README reviewed. | Dual-motor joystick mechanics, magnetic encoder arrangement and haptic system integration. Different hardware; no direct GD32 port established. |
| [WestlingPi/hoverboard-driver](https://github.com/WestlingPi/hoverboard-driver) | Recorded in the existing fork survey; repository identity verified now. | Host odometry and ROS [Robot Operating System] integration; evaluate protocol compatibility first. |
| [filagyuri/OpenMower](https://github.com/filagyuri/OpenMower) | Recorded in the existing fork survey; identity verified now. | Mower state/safety and whole-system integration concepts; not a motor-control dependency. |
| [filagyuri/mower](https://github.com/filagyuri/mower) | Recorded in the existing fork survey; identity verified now. | Application architecture reference; detailed source review pending. |
| [filagyuri/LiDAR_Mobile_robot](https://github.com/filagyuri/LiDAR_Mobile_robot) | Recorded in the existing fork survey; identity verified now. | LiDAR [light detection and ranging] / robot sensing concepts at the supervisory layer; detailed review pending. |
| [eagabriel/Odrive-Wheel](https://github.com/eagabriel/Odrive-Wheel) | Companion source linked by the currently fetched OFFBase README; identity verified now. Not independently recovered as an original conversation citation. | Compare exact lineage before treating it and LiuIAMe/OFFBase as independent implementations. Torque/deadband/host tools are potential review targets. |

Non-repository application references retained from earlier discussion:

- [Wijkbot / Hoodbot](https://hoodbot.net/maak-je-eigen-wijkbot/): radio-control mower wiring/application reference; historical discussion cited the FS-i6/FS-iA6B setup. Exact source repository unresolved.
- [Fractal Ink radio-control mower](https://ku.nz/blog/rcmower.html): earlier direct two-channel control example; historical link retained, page not re-audited here.
- AgOpenGPS zero-turn mower, HoverMower, ROSMower, an Esk8 News mower thread and a ResearchGate mower example: exact original repository/page identities remain unresolved. Preserve as leads, not verified designs.
- Kelly / Sevcon and Mechaduino appeared in older adjacent controller/stepper discussions returned by retrieval, not established as sources used by this planning branch. No new dependency or code-reuse claim is made.
- Superpowers appeared as workflow tooling, not a motor-control source. It is outside firmware provenance.

## Complete recorded fork roster

The 29 rows below preserve the **2026-09-19 recorded survey**, not a claim about today's fork count or a fresh audit of every account. All entries are HISTORICAL/CANDIDATE except this project and dependencies explicitly identified above. Branch-specific useful sources already have detailed records; other rows remain searchable rather than being silently dropped. No-unique-material findings are dated observations, not permanent judgments.

| Repository | Survey disposition |
| --- | --- |
| [0voltex0/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/0voltex0/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [Arcturis144/Hoverboard-Firmware-Hack-Gen2.x-GD32-ServoFOC](https://github.com/Arcturis144/Hoverboard-Firmware-Hack-Gen2.x-GD32-ServoFOC) | This project |
| [Bluebuddy84/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/Bluebuddy84/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Main fork not unique for ServoFOC; account also tracks EFeru FOC [field-oriented control] lineage |
| [DipFlip/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/DipFlip/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found in the surveyed branch set |
| [Erik-96/Hoverboard-Firmware-Hack-Gen2.x-GD32F103C8](https://github.com/Erik-96/Hoverboard-Firmware-Hack-Gen2.x-GD32F103C8) | Different MCU [microcontroller unit] focus; account also contains older Gen2/HUGS [Hoverboard Utility Gateway System] lineage |
| [Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/Homobonus/Hoverboard-Firmware-Hack-Gen2.x-GD32) | High-value `spatialrag-agv` branch; see above |
| [Jodaille/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/Jodaille/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Main Gen2.x fork mostly follows upstream; related sideboard repository is high-value for iBUS [FlySky serial receiver protocol] |
| [MoltenHydrogen/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/MoltenHydrogen/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [RobDoozer/RoboDurden-Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/RobDoozer/RoboDurden-Hoverboard-Firmware-Hack-Gen2.x-GD32) | Direct fork itself not the main target; related HUGS [Hoverboard Utility Gateway System] repository is useful |
| [Vicky-lp01/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/Vicky-lp01/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/WestlingPi/Hoverboard-Firmware-Hack-Gen2.x-GD32) | High-value safety/ROS2 [Robot Operating System 2] branches |
| [YujiKF/FirmwareHoverCR](https://github.com/YujiKF/FirmwareHoverCR) | High-value host/wireless/telemetry architecture |
| [adj00080/Hoverboard-Firmware-Hack-Gen2.x-GD32-SPLIT](https://github.com/adj00080/Hoverboard-Firmware-Hack-Gen2.x-GD32-SPLIT) | Direct split fork plus related FOC [field-oriented control] ConeRobot experiments; troubleshooting reference |
| [filagyuri/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/filagyuri/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Main fork not primary; related FOC [field-oriented control], OpenMower, mower, and LiDAR [light detection and ranging] repositories provide application ideas |
| [gggfaffff/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/gggfaffff/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [hexplode13/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/hexplode13/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Main fork not unique for ServoFOC; account also tracks EFeru FOC [field-oriented control] |
| [hiliving/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/hiliving/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/hoverboardhavoc/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Highest-value account/branch set in this survey |
| [kneave/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/kneave/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [leideno/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/leideno/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/lucai11/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Useful `inserted_adc` branch |
| [mike7442/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/mike7442/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [nitelife-media/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/nitelife-media/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [ntindle/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/ntindle/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [russt6/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/russt6/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Useful historical evidence that RemoteAutodetect corrected a real layout/Hall mapping |
| [sergioshimura/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/sergioshimura/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Direct fork not unique for our GD32F130 target; account also tracks MM32SPIN firmware |
| [thallesgate/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/thallesgate/Hoverboard-Firmware-Hack-Gen2.x-GD32) | Direct fork not primary; related Rodney robot/ROS [Robot Operating System] repositories are application-level references |
| [timtom04/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/timtom04/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |
| [willhess92/Hoverboard-Firmware-Hack-Gen2.x-GD32](https://github.com/willhess92/Hoverboard-Firmware-Hack-Gen2.x-GD32) | No immediate unique target material found |


## Unresolved references and coverage gaps

| Gap | What is known | Required next evidence |
| --- | --- | --- |
| Full conversation coverage | Supplied continuation and multiple targeted historical searches were reviewed; retrieval omitted portions and returned some adjacent-thread material. | Import a complete user-provided transcript/export for a literal link/name extraction and reconcile against this inventory. Until then, do not label the history audit exhaustive. |
| Separate EFeru implementation package | Earlier messages/package summaries report a generated core and safe-bring-up wrapper. This branch still selects the sine backend. | Exact artifact/repository, branch, commit, donor revision and changed files; do not infer current adoption from prior assistant statements. |
| HoverMower / ROSMower / AgOpenGPS examples | Historical application names recovered; exact original source identities missing. | Recover original message/link or have the user identify the project. Do not substitute similarly named repositories. |
| HUGS [Hoverboard Utility Gateway System] parent / Erik-96 lineage | RobDoozer's exact reference is preserved; earlier account survey mentioned additional lineage. | Resolve the original gearsincorg and Erik-96 repository identities/revisions before claiming an additional donor. |
| thallesgate Rodney robot / sergioshimura MM32SPIN work | Mentioned by the existing account survey, without exact neighboring repository identities. | Recover the exact source and target relevance. |
| Package resolution | Primary platform uses an unpinned URL; modified framework uses a branch. | Capture installed package revisions and a reproducible build manifest in the implementation workflow. |
| Inherited sensor and tool provenance | Local headers/scripts establish presence and attribution. | Trace donor commits, per-file licenses, selected driver macros and actual tool binary versions. |
| Candidate behavior verification | Source roles and prior survey pins are recorded; most candidates were not re-reviewed line by line. | Open a bounded review for the exact subsystem and commit, then record tests and adoption decision here. |
| License gaps | Some sources have only historical license notes or README declarations. | Inspect the selected files/commit and retain attribution before copying. A public repository is not blanket permission. |
| Hardware evidence | PA6 role, exact sensor identity, current-channel behavior and debug connections require local verification. | Measurements/logs linked to the exact board and firmware build; source reports remain corroboration only. |

## How to maintain this inventory

1. Add every new source with a canonical URL or explicitly unresolved identity. Preserve aliases and original links.
2. Record where it came from: dated conversation, source file, prior survey, or newly discovered companion. Do not retrospectively label new discoveries as prior decisions.
3. Assign status, subsystem, useful scope, limitations and next review. Distinguish already-used source from design influence and merely promising code.
4. Before adaptation, record exact commit, file paths, license evidence, copied-versus-independent implementation decision and tests required.
5. After integration, link the local implementing commit/files and validation evidence. A plan, README claim or survey pin alone is not integration proof.
6. When changing dependencies, update section A and build documentation together. Keep survey pins separate from actual package locks.
7. Keep the full roster and unresolved leads searchable. Mark superseded sources rather than deleting their history.
8. Update the audit date/snapshot and append a change-log entry. This inventory is the maintained register; FORK_SURVEY.md is the historical survey.
9. All project changes target Arcturis144/Hoverboard-Firmware-Hack-Gen2.x-GD32-ServoFOC. Do not write to a reference/upstream repository without an explicit request.

### Entry template

```markdown
### Source name

- Repository / original alias:
- Status: BASE / INHERITED / BUILD-SELECTED / TOOL-CONFIGURED / DESIGN-USED / CANDIDATE / HISTORICAL / ADJACENT / UNRESOLVED
- Evidence and origin:
- Subsystem and useful material:
- Exact branch / commit / file paths:
- Actual local dependency selector or integration commit:
- License evidence / reuse decision:
- Hardware and resource limitations:
- Required validation / result:
- Next action / unresolved questions:
- Last checked:
```

## Audit change log

- 2026-09-21: consolidated current-use evidence, missing earlier references, all 29 recorded survey entries, diagnostics, adjacent applications and unresolved leads. Corrected the modified framework's actual dependency status and distinguished survey revisions from build locks. Retained all earlier detailed source records and commit identifiers. Corrected stale automation/baseline wording in related documentation. No firmware, build selectors, workflows or dependency revisions changed.

## Historical chat artifacts

See the [chat artifact archive](../chat-archive/README.md) for recovered original packages, reports, build snapshots, and the explicitly incomplete conversation record.
