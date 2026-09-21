# ServoFOC implementation roadmap

This roadmap is deliberately incremental. Each revision should leave a buildable, reviewable state and should avoid mixing unrelated changes.

## R0 - baseline and project structure

- Preserve the inherited normal-application behavior while keeping the existing passive servo scaffold isolated. The branch already contains servo build selectors and bring-up code; it is not an untouched source snapshot.
- Establish repository documentation and provenance.
- Maintain a dated survey of the RoboDurden fork network and pin exact useful external references before adaptation.
- Preserve MASTER/SLAVE as hardware variants, not servo control roles.
- Establish the independent-servo application design.
- Use the existing PlatformIO primary build path; retain Keil Studio / CMSIS [Common Microcontroller Software Interface Standard] as the secondary parity/debug route.
- Prove the untouched firmware baseline builds before motor-control changes.

### R0 - To Do after first programming

- Record how STM32CubeProgrammer identifies the GD32F130C8 target when connected through the ST-Link over SWD (Serial Wire Debug), including the reported device ID, core ID, flash size, and CPU/core description.
- Attach with OpenOCD (Open On-Chip Debugger) using the existing PlatformIO GD32F130 configuration and record the detected TAP/CPUID, flash bank, and flash size.
- Verify that the existing `interface/stlink.cfg` + `target/stm32f1x.cfg` path reliably connects to the actual Gyroor controller hardware.
- Verify RTT (Real-Time Transfer) discovery and channel-0 output using the existing PlatformIO `RTT Start` and `RTT Console` tasks.
- Verify GDB (GNU Debugger) source-level debugging over ST-Link/SWD with a basic breakpoint, halt/resume, and watched-variable test.
- Document the known-good programmer/debugger identification and connection settings so later current-sense and FOC (Field-Oriented Control) work uses a proven monitoring path.


### Diagnostic/telemetry and optional local display architecture

Treat diagnostics as a first-class interface but keep them completely outside the motor-control authority path. The motor-control loop must never wait for a display, dashboard, logger, host computer, or other diagnostic client.

Maintain a compact controller-owned telemetry snapshot containing the most useful live state, including where implemented:

- motor speed, requested torque/current, measured d/q-axis current, and d/q-axis current targets
- measured phase-A and phase-B current plus reconstructed phase-C current, with metadata identifying measured versus reconstructed values
- Hall state, electrical angle, mechanical angle when available, selected rotor-sensor type, and rotor-sensor validity
- battery voltage, modulation/duty state, and active current/voltage limits
- PA6 motor-temperature data once characterized, current-derived I^2t thermal state, and the active thermal limit
- fault flags, calibration-domain status, current-sample errors, Hall errors, encoder errors, and control-loop timing/overrun diagnostics

Expose that same controller-owned diagnostic data through a transport-independent diagnostic API (Application Programming Interface) so a local display, UART (Universal Asynchronous Receiver-Transmitter) host, RTT (Real-Time Transfer) debugger, Raspberry Pi, or PC tuner all observe the same authoritative values rather than maintaining separate diagnostic implementations.

Support an optional local dashboard/debug display as a non-critical client. Intended display modes include:

- OFF
- ON_DEMAND
- ALWAYS_ON
- FAULT_ONLY

Normal dashboard/diagnostic pages should be read-only. Safety-critical parameter changes should require an explicit service/tuning mode and an appropriate controller state such as DISARMED. Parameter writes should be range-checked and state-checked by the controller, then the controller should report the value actually accepted/applied rather than allowing the client to assume a requested value was accepted.

The local display may expose dashboard, current/FOC (Field-Oriented Control), thermal, battery, rotor-sensor, calibration, fault-history, and system/debug pages. Diagnostic presentation should distinguish physical measurements from derived values, for example identifying phase-C current as reconstructed when only two physical phase-current sensors are present.

Persist useful fault history and freeze-frame data so a later diagnostic session can inspect the controller state at the time of a significant fault. Freeze-frame data should be bounded and selective rather than continuously writing flash.

Motor operations always have priority over diagnostic traffic. PWM (Pulse-Width Modulation), ADC (Analog-to-Digital Converter) sampling, current reconstruction, FOC (Field-Oriented Control), rotor-angle acquisition needed for control, and protection/fault handling must pre-empt or defer display work. A disconnected, stalled, or malfunctioning display must not interfere with motor operation.

If an SPI (Serial Peripheral Interface) encoder and SPI (Serial Peripheral Interface) display share a bus, rotor-sensor transactions receive deterministic priority and display updates are chunked/deferred into unused bus time. Display refresh rate may fall under high motor-control load without changing motor-control timing. UART (Universal Asynchronous Receiver-Transmitter) smart displays may alternatively use the external serial interface where appropriate.

The display is an optional diagnostic/dashboard client, analogous to an OBD-II (On-Board Diagnostics II) scan tool or vehicle instrument cluster. ServoFOC must remain fully functional with no display connected.


## Cross-cutting source-integration plan

Use [the maintained reference inventory](provenance/SOURCES.md) to distinguish actual dependencies, adopted planning concepts, candidates and unresolved leads. The selected CommunityGD32 platform and modified hoverboardhavoc framework are already build dependencies; survey pins do not lock their current selectors.

Use other external projects as targeted references:

- hoverboardhavoc `foc-reimplement-from-spec-tidy` at `7650dffafb5b1d3c816e22fff66ebf65ae7fb138`: primary Gen2.x/layout-2.1.20 FOC [field-oriented control] reference. Mine the pure math, Hall interpolation/PLL [phase-locked loop], PI [proportional-integral] current-loop structure, DTC [dead-time compensation], PWM [pulse-width modulation]-relative current sampling, and host tests. Do not import its motor-specific tuning constants as defaults.
- hoverboardhavoc `hoverboard-gen2.1-hack-GD-imu` at `14e01f24ee5f5df9393a89d0ead54363e3210e9b` plus `HoverboardImu` at `b7682c98295b05ca43adcbd302954bd9134ecc0c`: board-family IMU [inertial measurement unit] and GD32F130C8 PlatformIO evidence. Treat the reported I²C [inter-integrated circuit] behavior and MPU6050-like device observations as external corroboration until checked on our boards.
- WestlingPi `debug-safety-limit` at `32eafc60ae4377d24e3c7824f92bed0fd5fada89` and Homobonus `spatialrag-agv` at `4986a0e4de308b395b9bcce400c299c547e20985`: communication sanity, stale-link diagnostics, and host telemetry/parser references.
- Jodaille `hoverboard-sideboard-hack-GD` at `c063fdf2e1b0e11f2db70040c5e6d32e5b79019f`: iBUS [FlySky serial receiver protocol] packet/checksum/timeout handling reference for the FS-iA6B receiver path.
- lucai11 `inserted_adc` at `814efb694a7799d5d288394addb2f6aaf785de43`: RemoteAutodetect size reduction and timer-triggered inserted ADC [analog-to-digital converter] reference. Its generic `CURRENT_DC` assumptions are not accepted for layout 2.1.20 without hardware evidence.
- HUGS [Hoverboard Utility Gateway System], YujiKF, hoverboardhavoc joystick tooling, adj00080, and filagyuri projects remain secondary references for servo behavior, host control, wireless bridges, troubleshooting, and safety patterns.

The full source register and fork survey are authoritative for exact provenance: `docs/provenance/SOURCES.md` and `docs/provenance/FORK_SURVEY.md`.

Earlier references now retained in that inventory include SimpleFOC for control/sensor abstractions; mianos/esp32foc for commissioning identification; legacy ODrive and VESC [Vedder Electronic Speed Controller] for servo/protocol comparisons; Bipropellant for protocol separation; and OpenFFBoard/OFFBase/FFBeast for later force-feedback behavior. Inclusion does not change the chosen implementation sequence or establish source integration.

## R1 - current sensing foundation

- Adapt the phase-current acquisition proven in PR #28 for layout 2.1.20, cross-checking against hoverboardhavoc commits `b363f81522cfeb4ee0669b4da55b880f96f8ceac` and `68a60ef7d8b2b78e510abd1c045e1c277a15111c`.
- Confirm PB0/PA0 mapping for the target hardware before enabling closed-loop control.
- Make ADC scan ordering and software data ordering structurally consistent.
- Add bridge-disabled startup current-zero calibration, initially using a 16-sample average.
- Expose raw readings, zero offsets, and current-sense health for debug/telemetry.
- Add PA6 to monitoring as a diagnostic ADC channel only. Expose raw and filtered PA6 values in debug/Live Expressions, but give PA6 no control authority at this stage.
- No FOC output yet.

## R2 - deterministic current sample timing

- Adapt PR #28 PWM [pulse-width modulation]-relative ADC [analog-to-digital converter] triggering for the known hardware, comparing the timer/trigger approach with hoverboardhavoc `b363f81522cfeb4ee0669b4da55b880f96f8ceac` and lucai11 `814efb694a7799d5d288394addb2f6aaf785de43`.
- Keep the timing implementation target-specific rather than applying unverified timer register changes to every supported MCU.
- Validate sample placement and trigger count on hardware.

## R3 - coherent PWM updates

- Enable compare preload/shadow behavior for the FOC path so all three phase duties take effect at a defined PWM boundary.
- Preserve known-good non-FOC behavior until separately validated.

## R4 - FOC core

- Adapt the useful PR #28 FOC [field-oriented control] implementation onto current upstream, using hoverboardhavoc `d7162fb433446dc6b219d329249c096c03de51c7` and `145674d49d60170646adcac19da0ff0a76debf05` as primary implementation references rather than as drop-in code.
- Preserve host-side mathematical tests.
- Separate FOC math from hardware acquisition/timer code.
- Centralize numeric types and operations so an alternate fixed-point backend can be evaluated later without scattering scaling assumptions throughout the control code.

## R5 - commissioning, persistent calibration, and startup validation

Introduce a controlled state machine such as:

- DISARMED
- LOAD_CAL
- CURRENT_ZERO
- SENSOR_SANITY
- IDENTIFY_R
- IDENTIFY_L
- IDENTIFY_INVERTER
- ALIGN
- HALL_PHASE_CAL
- VALIDATE
- SAVE_CAL
- READY
- RUN
- FAULT

Commissioning is split into three explicit responsibilities:

- `CommissioningDiscovery`: active, intentionally invasive tests used only while disarmed/commissioning. Reuse selected ideas from `RemoteAutodetect` for candidate-pin discovery, Hall sequence/mapping, phase-current validation, and board identification.
- `RuntimeMonitor`: passive checks only while operating, including legal Hall state, one-bit Hall transitions, expected saved Hall sequence/direction, transition timing, current-sensor health, PA6 monitoring, command freshness, and calibration plausibility.
- `CalibrationStore`: versioned persistent calibration plus per-domain validity/status, with runtime/last-start status stored separately to avoid unnecessary flash rewrites.

Do not run the complete existing `RemoteAutodetect` state machine during normal operation. It changes GPIO [general-purpose input/output] modes, can actively drive the motor, and includes board-generic assumptions. In particular, its `CURRENT_DC` discovery/test path must not be allowed to classify PA6 as a DC [direct current] bus-current sensor on layout 2.1.20. PA6 remains diagnostic/unclassified until characterized.

The Hall-order logic is valuable in two forms: commissioning may actively determine the saved Hall/phase relationship, while runtime should reuse only passive invariants such as rejection/counting of `000` and `111`, one-bit transition validation, expected sequence/direction, transition timing, and missed/duplicate/illegal-transition counters.

The resistance/inductance/inverter-drop identification discussion was informed by [mianos/esp32foc](https://github.com/mianos/esp32foc). Its controller is open-loop V/Hz [volts per hertz]; treat the measurement methods as reviewable concepts, not a closed-loop motor backend or a source-copy authorization. The exact historical revision and license remain unresolved in the source inventory.

Detailed motor identification is a commissioning operation, not a normal-boot operation. Static or slowly changing motor/controller parameters should be measured once for a particular motor/controller pairing, validated, versioned, and saved to flash. Normal startup should load the saved calibration and run only low-energy sanity checks plus genuinely dynamic calibration such as current-sensor zero offsets.

Persistent calibration should include, where available:

- motor winding resistance reference (Rs), including reference temperature
- motor winding inductance (Ls)
- Hall/phase relationship
- pole-pair count or equivalent motor geometry information
- current-sensor gain and polarity
- inverter/dead-time voltage model
- validated motor-temperature sensor model and parameters

Calibration data should have a version, integrity check, and per-domain validity/status metadata. Status should be grouped by meaningful calibration domains rather than allocating a separate flash record for every scalar. At minimum, maintain independent status/fault bits for:

- current sensing
- motor Rs
- motor Ls
- Hall/phase mapping
- inverter/dead-time model
- motor-temperature sensor model
- overall calibration integrity/version

Keep the relatively static calibration block separate from the runtime/last-start status block so normal faults do not cause unnecessary rewrites of the calibration data.

On normal startup:

- load and verify the saved calibration block
- recalibrate only dynamic current-zero offsets
- check current-sensor rails/noise and Hall plausibility
- run low-energy plausibility checks against stored calibration values where practical
- compare measured startup Rs against the temperature-corrected stored Rs reference
- cross-check the PA6 motor-temperature reading against the Rs-derived expected copper temperature once the PA6 scale is validated
- if all required checks pass, proceed directly to READY without re-running full Rs/Ls identification

A disagreement between Rs and the PA6-derived temperature must be treated initially as a cross-check fault, not automatically blamed on the NTC. Possible causes include NTC wiring/sensor failure, winding/connector damage, a changed motor, or a bad resistance measurement. Fault isolation should use the other available evidence before deciding which calibration domain is invalid.

A previous calibration-related fault should request revalidation of the affected domain on the next startup. Full motor identification should only be repeated when required by an invalid/missing calibration, an explicit commissioning request, a detected motor/controller change, or a previous fault that implicates the corresponding stored model.

Commissioning should determine board/motor-specific values rather than importing motor-specific constants from reference projects.

## R6 - current-sense quality, thermal cross-checking, and drift handling

- noise floor and variance tracking
- spike/fault detection
- slow offset adaptation only during trustworthy near-zero-current conditions
- characterize the provisional PA6 motor-temperature input before using it for protection:
  - compare PA6 ADC values with direct resistance measurements on the extra motor wire
  - record resistance and PA6 readings against measured stator temperature
  - verify divider orientation/scaling and determine the NTC curve or equivalent conversion model
  - document sensor validity/failure behavior and the expected usable range
- preserve the current-derived I^2t heating estimate independently of the measured motor-temperature path
- use the stored Rs reference and copper temperature coefficient as an independent startup/runtime plausibility check for the motor-temperature sensor when measurement conditions are trustworthy
- do not automatically overwrite persistent calibration from a single failed sanity check; set the relevant status/fault bit and require revalidation according to the fault policy

## R7 - torque servo

- conservative torque/current mode
- current, voltage, thermal, and timeout limits
- after PA6 scaling and the motor NTC model are validated, add measured stator-temperature derating as an independent thermal limit
- combine measured stator-temperature limiting with the current-derived I^2t model; neither path replaces the other, and the lower allowed-current limit wins
- use calibration-domain status so an invalid sensor/model cannot silently participate in protection or control
- predictable regenerative/braking behavior

## R8+ - outer servo loops

- velocity loop
- absolute position loop
- Hall-derived coarse position as a baseline
- optional wheel/load encoder and index input
- impedance-style behavior for haptic/large-servo applications
- stable versioned command/telemetry protocol
- validate every external command through framing/checksum, structural checks, physical plausibility/range checks, freshness/timeout, controller-state permission, and the global safety limiter before it can create torque
- reject implausible commands to zero/safe state rather than merely clamping a corrupted large command into the valid range
- expose last-valid-command/link age and command-error counters in telemetry
- adapt the proven iBUS [FlySky serial receiver protocol] parser/checksum/timeout pattern for an optional direct FS-iA6B service/RC [radio control] input behind the same transport-independent command interface

A future dedicated current-sampling path using inserted ADC channels may be evaluated after the PR #28 timing path is working and measured on the target board.
