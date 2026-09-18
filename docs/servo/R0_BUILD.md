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

Select exactly one hardware variant. MASTER and SLAVE in these macro names describe the physical PCB variants only. `configServo.h` defines `SINGLE`, so both binaries run as independent local motor controllers and neither uses the legacy Gen2.x master/slave command relationship.

The first supported ServoFOC target is GD32F130 layout 2.1.20.

## R0 behavior

R0 deliberately continues to compile the existing `BLDC_SINE` backend. FOC (Field-Oriented Control) has not been introduced yet.

The ServoFOC configuration reserves USART1 on PA2/PA3, the former master/slave UART header, as the direct supervisory-controller link. `RemoteServo.c` is intentionally command-locked in R0: it zeros the upstream speed/steer command variables and holds `bRemoteTimeout` asserted. Therefore an R0 ServoFOC binary is not intended to drive a motor.

This gives us a buildable application boundary before current-sense and FOC work begins, without using `REMOTE_DUMMY`, which deliberately generates motor commands.

## Hardware variants

`SERVO_HW_MASTER` retains the layout's normal button/self-hold behavior for the moment.

`SERVO_HW_SLAVE` defines `DISABLE_BUTTON`, following the upstream recommendation for operating slave-board hardware independently. This also suppresses use of `SELF_HOLD` until the MASTER/SLAVE hardware differences are explicitly documented and verified.

These choices are scaffolding, not a claim that every hardware difference has already been characterized.

## Primary R0 build: PlatformIO

PlatformIO is the primary R0 build path because the upstream Gen2.x repository already carries a working GD32 PlatformIO configuration. ServoFOC extends the existing `genericGD32F130C8` environment rather than creating a separate framework/toolchain definition.

Two ServoFOC environments are defined in `HoverBoardGigaDevice/platformio.ini`:

- `servo_G5_master`
- `servo_G5_slave`

Both inherit the upstream GD32F130C8 board, SPL (Standard Peripheral Library), linker script, clock-selection flags, and auxiliary scripts. The MASTER environment adds `APPLICATION_SERVO` and `SERVO_HW_MASTER`; the SLAVE environment adds `APPLICATION_SERVO` and `SERVO_HW_SLAVE`.

From `HoverBoardGigaDevice`, build with:

```text
pio run -e servo_G5_master
pio run -e servo_G5_slave
```

The unmodified upstream reference environment remains available as:

```text
pio run -e genericGD32F130C8
```

This keeps the normal Gen2.x build available alongside the ServoFOC variants.

## Secondary validation: Keil Studio / CMSIS Solution

`HoverBoardGigaDevice/ServoFOC.csolution.yml` and `ServoFOC.cproject.yml` remain in the repository for Arm Compiler 6 / CMSIS (Common Microcontroller Software Interface Standard) validation and source-level debugging. They pin the GigaDevice `GD32F1x0_DFP` (Device Family Pack) to version 3.2.1 and expose `G5-MASTER-HW` and `G5-SLAVE-HW` target types.

The CMSIS route is no longer the blocking build path for R0. It should be brought to parity after the PlatformIO ServoFOC builds are clean. Any RTE (Run-Time Environment) update/merge notices must still be reviewed rather than blindly accepted.

The standard upstream `Hoverboard.uvprojx` GD32F130 target also remains present and unchanged as an additional reference build.

## R0 build validation still required

Adding the PlatformIO environments does not by itself prove that the project builds. Before R0 is considered build-clean, all three relevant PlatformIO environments must compile from a clean checkout:

```text
genericGD32F130C8
servo_G5_master
servo_G5_slave
```

The stock GD32F130C8 build establishes upstream/toolchain parity first; the two ServoFOC builds then validate that the new application and hardware-variant selectors compile without changing normal Gen2.x behavior.
