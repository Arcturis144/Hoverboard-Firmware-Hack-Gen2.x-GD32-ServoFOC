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

## Upstream integration

New firmware code must fit the upstream object-oriented-like C architecture described in `ai_guidelines*.md`. Hardware-specific changes should be isolated behind target/layout hooks where practical. Generic servo and FOC logic should not contain mower-specific assumptions.
