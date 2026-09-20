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

This choice is additionally corroborated by hoverboardhavoc `hoverboard-gen2.1-hack-GD-imu` commit `14e01f24ee5f5df9393a89d0ead54363e3210e9b`, which was ported specifically to a split GD32F130C8 hoverboard motherboard and uses PlatformIO. That project references hoverboardhavoc `gd32-pio-spl-package` branch `hoverboardhavoc/add__PIO_DONT_SET_CLOCK_SOURCE__`, pinned here at `8849cb2af35f16431734d9e9c101de648f54f061`, to avoid the framework overriding the intended clock source.

These are build-system references, not automatic production dependencies. ServoFOC should only pin or vendor a modified SPL [standard peripheral library] package after comparing its behavior with the current upstream package and documenting why the change is required.

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

## R0 build validation

The GitHub Actions PlatformIO build workflow is now present and the first CI [continuous integration] run successfully compiled both ServoFOC hardware variants from a clean runner. The upstream-reference environment should still be used when checking toolchain parity after major low-level changes.

The relevant environments are:

```text
genericGD32F130C8
servo_G5_master
servo_G5_slave
```

The stock GD32F130C8 build establishes upstream/toolchain parity; the two ServoFOC builds validate the new application and hardware-variant selectors. The R0.1 first-flash behavior and debugger-visible monitor are documented in `R0_BRINGUP.md`.

For later low-level timer/ADC [analog-to-digital converter] changes, hoverboardhavoc `regtrace` at `673e6b005c8272d0bf9ccd2b63938630ad4ab70e` is a useful verification tool/reference. It compares peripheral register programming across implementations and already contains GD32F1x0 timer, ADC [analog-to-digital converter], DMA [direct memory access], USART [universal synchronous/asynchronous receiver-transmitter], flash, watchdog, and clock work relevant to this firmware family.
