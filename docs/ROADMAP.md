# ServoFOC implementation roadmap

This roadmap is deliberately incremental. Each revision should leave a buildable, reviewable state and should avoid mixing unrelated changes.

## R0 - baseline and project structure

- Current RoboDurden Gen2.x GD32 source remains functionally unchanged.
- Establish repository documentation and provenance.
- Preserve MASTER/SLAVE as hardware variants, not servo control roles.
- Establish the independent-servo application design.
- Establish the intended Keil Studio / CMSIS build path.
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


## R1 - current sensing foundation

- Adapt the phase-current acquisition proven in PR #28 for layout 2.1.20.
- Confirm PB0/PA0 mapping for the target hardware before enabling closed-loop control.
- Make ADC scan ordering and software data ordering structurally consistent.
- Add bridge-disabled startup current-zero calibration, initially using a 16-sample average.
- Expose raw readings, zero offsets, and current-sense health for debug/telemetry.
- Add PA6 to monitoring as a diagnostic ADC channel only. Expose raw and filtered PA6 values in debug/Live Expressions, but give PA6 no control authority at this stage.
- No FOC output yet.

## R2 - deterministic current sample timing

- Adapt PR #28 PWM-relative ADC triggering for the known hardware.
- Keep the timing implementation target-specific rather than applying unverified timer register changes to every supported MCU.
- Validate sample placement and trigger count on hardware.

## R3 - coherent PWM updates

- Enable compare preload/shadow behavior for the FOC path so all three phase duties take effect at a defined PWM boundary.
- Preserve known-good non-FOC behavior until separately validated.

## R4 - FOC core

- Adapt the useful PR #28 FOC implementation onto current upstream.
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

A future dedicated current-sampling path using inserted ADC channels may be evaluated after the PR #28 timing path is working and measured on the target board.
