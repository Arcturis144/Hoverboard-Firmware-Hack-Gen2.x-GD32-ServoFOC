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

## Keil Studio / CMSIS Solution

`HoverBoardGigaDevice/ServoFOC.csolution.yml` is the primary ServoFOC development solution. It uses Arm Compiler 6 and pins the GigaDevice `GD32F1x0_DFP` to version 3.2.1, matching the device pack selected by the current upstream GD32F130 uVision target.

The solution exposes two hardware target types:

- `G5-MASTER-HW`
- `G5-SLAVE-HW`

Each target resolves to `GD32F130C8`, defines `APPLICATION_SERVO`, and differs only by the physical board-variant macro. Debug and Release build types are provided.

`ServoFOC.cproject.yml` selects the same GigaDevice startup and standard-peripheral component families already used by the upstream GD32F130 project and points its RTE directory at the existing `HoverBoardGigaDevice/RTE` tree. This is intentional: the existing project contains user-modified configuration copies such as the internal-oscillator 72 MHz `system_gd32f1x0.c`, which must not silently be replaced with an unrelated default.

The project emits ELF, HEX, and MAP outputs. The HEX output is intended for programming while the ELF retains symbols for source-level debugging.

## R0 build validation still required

Adding the CMSIS Solution files does not by itself prove that the project builds. Before R0 is considered complete, both contexts must be opened/resolved in Keil Studio and built with the required packs installed. Any RTE update/merge notices must be reviewed rather than blindly accepted.

After the first successful CMSIS-Toolbox pack resolution, commit the generated `ServoFOC.cbuild-pack.yml` so subsequent builds use the same resolved pack versions.

The standard upstream `Hoverboard.uvprojx` GD32F130 target remains present and unchanged; it is our reference build while the ServoFOC solution is validated.
