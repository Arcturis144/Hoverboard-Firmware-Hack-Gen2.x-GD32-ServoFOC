# ServoFOC implementation roadmap

This roadmap is deliberately incremental. Each revision should leave a buildable, reviewable state and should avoid mixing unrelated changes.

## R0 - baseline and project structure

- Current RoboDurden Gen2.x GD32 source remains functionally unchanged.
- Establish repository documentation and provenance.
- Preserve MASTER/SLAVE as hardware variants, not servo control roles.
- Establish the independent-servo application design.
- Establish the intended Keil Studio / CMSIS build path.
- Prove the untouched firmware baseline builds before motor-control changes.

## R1 - current sensing foundation

- Adapt the phase-current acquisition proven in PR #28 for layout 2.1.20.
- Confirm PB0/PA0 mapping for the target hardware before enabling closed-loop control.
- Make ADC scan ordering and software data ordering structurally consistent.
- Add bridge-disabled startup current-zero calibration, initially using a 16-sample average.
- Expose raw readings, zero offsets, and current-sense health for debug/telemetry.
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

## R5 - commissioning

Introduce a controlled state machine such as:

- DISARMED
- CURRENT_ZERO
- ALIGN
- HALL_PHASE_CAL
- READY
- RUN
- FAULT

Commissioning should determine board/motor-specific values rather than importing motor-specific constants from reference projects.

## R6 - current-sense quality and drift handling

- noise floor and variance tracking
- spike/fault detection
- slow offset adaptation only during trustworthy near-zero-current conditions
- future temperature correlation where valid sensors exist

## R7 - torque servo

- conservative torque/current mode
- current, voltage, thermal, and timeout limits
- predictable regenerative/braking behavior

## R8+ - outer servo loops

- velocity loop
- absolute position loop
- Hall-derived coarse position as a baseline
- optional wheel/load encoder and index input
- impedance-style behavior for haptic/large-servo applications
- stable versioned command/telemetry protocol

A future dedicated current-sampling path using inserted ADC channels may be evaluated after the PR #28 timing path is working and measured on the target board.
