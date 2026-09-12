# R0 servo build selection

R0 adds a separate ServoFOC application configuration without changing the default upstream build.

## Compile-time selection

A ServoFOC build currently requires all of the following compiler definitions:

```text
APPLICATION_SERVO
SERVO_HW_MASTER
```

or:

```text
APPLICATION_SERVO
SERVO_HW_SLAVE
```

Select exactly one hardware variant.  MASTER and SLAVE in these macro names describe the physical PCB variants only.  `configServo.h` defines `SINGLE`, so both binaries run as independent local motor controllers and neither uses the legacy Gen2.x master/slave command relationship.

The first supported ServoFOC target is GD32F130 layout 2.1.20.

## R0 behavior

R0 deliberately continues to compile the existing `BLDC_SINE` backend.  FOC (Field-Oriented Control) has not been introduced yet.

The ServoFOC configuration reserves USART1 on PA2/PA3, the former master/slave UART header, as the direct supervisory-controller link.  `RemoteServo.c` is intentionally command-locked in R0: it zeros the upstream speed/steer command variables and holds `bRemoteTimeout` asserted.  Therefore an R0 ServoFOC binary is not intended to drive a motor.

This gives us a buildable application boundary before current-sense and FOC work begins, without using `REMOTE_DUMMY`, which deliberately generates motor commands.

## Hardware variants

`SERVO_HW_MASTER` retains the layout's normal button/self-hold behavior for the moment.

`SERVO_HW_SLAVE` defines `DISABLE_BUTTON`, following the upstream recommendation for operating slave-board hardware independently.  This also suppresses use of `SELF_HOLD` until the MASTER/SLAVE hardware differences are explicitly documented and verified.

These choices are scaffolding, not a claim that every hardware difference has already been characterized.

## Next build-system step

The source-level application selection is now isolated behind `APPLICATION_SERVO`.  The next R0 task is to expose two explicit build configurations in the primary development toolchain:

- GD32F130 Servo G5 MASTER-HW
- GD32F130 Servo G5 SLAVE-HW

Those configurations should differ only by the physical-board macro and output name.  The standard upstream GD32F130 target must remain available and unchanged.
