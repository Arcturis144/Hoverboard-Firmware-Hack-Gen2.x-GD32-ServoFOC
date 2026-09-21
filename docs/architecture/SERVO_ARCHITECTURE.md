# Servo architecture

## Core rule

A servo build treats every controller PCB as an independent servo axis.

MASTER and SLAVE are retained only as hardware variants when the physical boards differ. They are not command/control roles in the servo application.

```text
Supervisory MCU
   |-- command/telemetry --> Servo axis A (MASTER hardware variant)
   `-- command/telemetry --> Servo axis B (SLAVE hardware variant)
```

Each axis must be able to boot, calibrate, receive commands, run its local control loops, protect itself, report telemetry, and enter a safe state without depending on another motor board.

## Commissioning, runtime monitoring, and persistent calibration

ServoFOC separates active discovery from normal operation:

```text
ServoFOC
  |-- CommissioningDiscovery
  |     active/low-energy tests while disarmed
  |     pin and Hall mapping
  |     phase-current validation
  |     motor R/L and inverter identification
  |
  |-- RuntimeMonitor
  |     passive Hall/current/thermal/command checks
  |     calibration plausibility and fault counters
  |
  `-- CalibrationStore
        versioned static calibration
        per-domain validity/status
        separate runtime/last-start status
```

The existing Gen2.x `RemoteAutodetect` implementation is a source of commissioning algorithms only. Its complete state machine must not execute as a background runtime monitor because several stages reconfigure pins or actively excite the motor. Runtime monitoring reuses only passive invariants and the saved result of commissioning.

## Responsibility split

### Servo-board MCU

- local hardware initialization
- PWM generation and bridge control
- phase-current acquisition
- Hall processing and rotor-angle estimation
- optional encoder acquisition
- FOC (Field-Oriented Control)
- local torque/current loop
- local velocity loop
- local position loop
- fast electrical and thermal protection
- command timeout handling
- servo telemetry

### Supervisory MCU

Application-specific behavior belongs above the servo drive. Examples include:

- differential/tank mixing
- RC input handling
- navigation and SLAM
- vehicle IMU interpretation
- trajectory generation
- mower logic
- force-feedback effect generation
- application UI and high-level modes

Useful Gen2.x functionality may be reused on the supervisory MCU where appropriate; it is not considered deleted merely because it is excluded from the servo-board build.

## Command ingress and failsafe boundary

Every transport feeds one controller-owned command validator. UART [universal asynchronous receiver-transmitter], iBUS [FlySky serial receiver protocol], a Raspberry Pi host, an ESP32 [Espressif 32-bit microcontroller] bridge, or a later network interface must not bypass the same safety boundary.

The acceptance chain is:

```text
frame received
  -> framing/checksum valid
  -> structure/version valid
  -> command physically plausible and in range
  -> command/link fresh enough
  -> current controller state permits the command
  -> global current/voltage/thermal/speed limits
  -> local servo target
```

A corrupted but checksum-valid command that is physically implausible is rejected into a zero/safe request rather than clamped into a large valid request. Telemetry records invalid-command counters and age of the last valid command/link. This follows useful failure-handling patterns found in the WestlingPi and Homobonus Gen2.x forks while keeping the implementation transport-independent.

## Command modes

The reusable servo core is intended to support:

1. torque command -> Iq target -> current loop -> FOC
2. velocity command -> velocity controller -> Iq target -> FOC
3. position command -> position controller -> velocity controller -> Iq target -> FOC
4. later impedance behavior -> position/velocity error -> torque target -> FOC

For the mower application, the normal external command is an absolute wheel-position/distance objective with velocity, acceleration, and deceleration constraints.

## Rotor position versus axis position

These are separate concepts even if they initially use the same sensor.

- Rotor position supplies electrical angle/velocity for FOC.
- Axis position supplies mechanical position/velocity for the servo outer loops.

The stock three digital Hall sensors are the minimum supported position source. Their edge count provides coarse incremental mechanical position as well as rotor commutation information. Future hardware may add a wheel/load encoder, index pulse, high-resolution rotor encoder, analog Hall sensors, or other sources without changing the FOC core interface.

## Park / hold behavior

Park/hold is not defined as maximum continuous stationary torque. The controller should use only the torque needed to prevent unwanted motion, with a deadband and thermal/current limits. Hall-edge position correction can provide coarse hold behavior even before an external encoder is fitted. A supervisory IMU may supply slope/load feed-forward for applications such as a mower.

## Reference implementations

The architecture distinguishes inherited code and selected framework dependencies from candidate algorithms. [The maintained reference inventory](../provenance/SOURCES.md) records both. Externally reported results require validation on our hardware before adoption. The primary current references are the hoverboardhavoc layout-2.1.20 FOC [field-oriented control] branch, the hoverboardhavoc GD32F130C8 IMU [inertial measurement unit]/PlatformIO work, Jodaille/EFeru iBUS [FlySky serial receiver protocol] handling, WestlingPi/Homobonus communication safety, lucai11 RemoteAutodetect/ADC [analog-to-digital converter] work, and HUGS [Hoverboard Utility Gateway System] servo/robot concepts. Exact pinned revisions and licensing notes are maintained in `docs/provenance/SOURCES.md`.

## Upstream integration

New firmware code must fit the upstream object-oriented-like C architecture described in `ai_guidelines*.md`. Hardware-specific changes should be isolated behind target/layout hooks where practical. Generic servo and FOC logic should not contain mower-specific assumptions.
