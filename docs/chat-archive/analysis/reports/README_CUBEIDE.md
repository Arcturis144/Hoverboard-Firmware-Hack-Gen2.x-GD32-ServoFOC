# Gyroor G5 Phase 3 — STM32CubeIDE / GNU Arm project

This bundle moves the normal development workflow to **STM32CubeIDE**, while keeping the firmware a **GD32F130C8** project. It does **not** substitute an STM32 part for the GD32.

CubeIDE is being used for:

- source editing and navigation;
- the bundled GNU Arm compiler/toolchain;
- build output and linker memory report;
- GDB debugging through OpenOCD + ST-Link;
- Live Expressions, using one expandable `g5mon` structure;
- programming the ELF from the same CubeIDE toolchain/OpenOCD installation.

STM32CubeProgrammer remains useful as a recovery/raw-read tool, but is no longer the normal edit/build/debug cycle.

## 1. Apply it

Start with the current RoboDurden `Hoverboard-Firmware-Hack-Gen2.x-GD32` checkout. The wrapper can also be run on a checkout to which Phase 3 was already applied.

Windows PowerShell / CMD:

```text
py apply_phase3_cubeide.py C:\path\to\Hoverboard-Firmware-Hack-Gen2.x-GD32
```

Linux:

```text
python3 apply_phase3_cubeide.py /path/to/Hoverboard-Firmware-Hack-Gen2.x-GD32
```

The wrapper:

1. applies the Phase-3 layout-20/FOC/current/PA6-NTC integration;
2. vendors the pinned EFeru generated FOC core;
3. vendors the **GD32F1x0 V3.2.0** device/peripheral headers that Keil normally obtains from the GigaDevice DFP;
4. installs the GNU Arm startup, 64-KiB/8-KiB linker script, Makefile, OpenOCD/GDB files, and CubeIDE project metadata;
5. installs `g5Monitor.c/.h` and the single `g5mon` debugger structure.

The GD32 headers are pinned to `CommunityGD32Cores/GD32Firmware` commit `4005bb036172cf671976df6160b828a3ee6e738e`, which is the import of `GD32F1x0_Firmware_Library_V3.2.0`. The local Gen2 peripheral `.c` files are from the same V3.2.0 library generation.

The script makes `.phase3.bak` / `.phase3cubeide.bak` backups before replacing differing files.

## 2. Resulting project layout

Important additions to the patched Gen2 checkout are:

```text
Makefile
.project

HoverBoardGigaDevice/
  GCC/
    GD32F130C8_FLASH.ld
    startup_gd32f1x0_gcc.s
    GD32F1x0_Headers/
      CMSIS/
      StdPeriph/
  Inc/
    foc_config.h
    driveCapability.h
    bldcFOC.h
    g5Monitor.h
    BLDC_controller.h
    rtwtypes.h
  Src/
    bldcFOC.c
    driveCapability.c
    g5Monitor.c
    BLDC_controller.c
    BLDC_controller_data.c

CubeIDE/
  OpenOCD/
    gyroor_gd32f130_stlink.cfg
    attach.gdb
    program.gdb
  tools/
    build_with_cubeide_toolchain.ps1
    start_openocd_cubeide.ps1
    program_with_cubeide_tools.ps1
```

## 3. Import into CubeIDE

Try first:

```text
File -> Import -> General -> Existing Projects into Workspace
```

Select the patched Gen2 checkout root. It contains `.project` with project name:

```text
Gyroor_G5_GD32F130_FOC
```

If your CubeIDE version refuses the lightweight Eclipse project metadata, use:

```text
File -> New -> C/C++ -> Makefile Project with Existing Code
```

Choose the patched checkout and **Other Toolchain**. Do not select an STM32 MCU or generate Cube/HAL startup code.

No `.ioc` is used.

## 4. Build

The GNU build is deliberately independent of ST's STM32 HAL. It uses:

```text
CPU       Cortex-M3
ISA       Thumb
Flash     64 KiB, 0x08000000-0x0800FFFF
SRAM      8 KiB,  0x20000000-0x20001FFF
Stack top 0x20002000
Optimize  -Os
Debug     DWARF-2 / g3
```

The linker reserves 1024 bytes for stack and zero bytes for heap. Flash or RAM overflow becomes a link failure rather than silently generating an oversized image.

On Windows, the easiest first build is from a PowerShell terminal opened at the project root:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\build_with_cubeide_toolchain.ps1
```

The script finds CubeIDE's own `make.exe` and `arm-none-eabi-gcc.exe` under common ST install locations. If CubeIDE is installed elsewhere:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\build_with_cubeide_toolchain.ps1 -CubeIdeRoot "D:\path\to\STM32CubeIDE"
```

The output files are:

```text
build/Gyroor_G5_GD32F130_FOC.elf
build/Gyroor_G5_GD32F130_FOC.hex
build/Gyroor_G5_GD32F130_FOC.bin
build/Gyroor_G5_GD32F130_FOC.map
```

The build prints both section sizes and GNU linker's flash/RAM usage. Send me that complete output on the first build; the EFeru FOC core has not yet had a final 64-KiB/8-KiB link-size validation on your CubeIDE toolchain.

## 5. ST-Link connection

Use normal controller/battery-side power.

```text
ST-Link GND    -> controller GND
ST-Link SWDIO  -> PA13 / SWDIO pad
ST-Link SWCLK  -> PA14 / SWCLK pad
```

The controller's 3.3-V pad is a target/reference voltage point; do not use the ST-Link 3.3-V output to power the controller.

NRST is not exposed on this board. The supplied OpenOCD configuration therefore does **not** claim an SRST wire. Attach-only sessions use `halt`. When a firmware programming cycle needs to restart the MCU, OpenOCD is explicitly configured to use Cortex-M **AIRCR `SYSRESETREQ`**, i.e. a software system reset over SWD rather than the absent NRST line.

Default SWD speed is **400 kHz**. If the connection is unstable, use **100 kHz**. The earlier 4-MHz connection to this exact controller was unstable.

## 6. Start OpenOCD from CubeIDE's installation

Windows:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\start_openocd_cubeide.ps1
```

For the conservative first session:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\start_openocd_cubeide.ps1 -SpeedKHz 100
```

Leave that terminal open while CubeIDE/GDB is connected.

OpenOCD listens for GDB on:

```text
localhost:3333
```

The supplied target config uses the STM32F1 OpenOCD target/flash driver because that is the compatibility path already demonstrated to communicate with this GD32F130 board. It does **not** imply the MCU is an STM32.

## 7. CubeIDE debug configuration

Create a **GDB Hardware Debugging** configuration in CubeIDE.

Use:

```text
Project:             Gyroor_G5_GD32F130_FOC
C/C++ application:   build/Gyroor_G5_GD32F130_FOC.elf
GDB:                 CubeIDE's arm-none-eabi-gdb
Remote target:       localhost:3333
```

For an attach-only session use:

```text
monitor halt
```

For a programming/debug session, enable image loading of the ELF. After the ELF is written, use:

```text
monitor reset halt
```

In this project that command is a **software `SYSRESETREQ`**, not an NRST pulse, because `cortex_m reset_config sysresetreq` is set in the supplied OpenOCD configuration.

The supplied `CubeIDE/OpenOCD/attach.gdb` and `program.gdb` show the exact command sequence used by the helper scripts.

## 8. One-command programming from the CubeIDE tools

After a successful build, Windows can program the ELF with:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\program_with_cubeide_tools.ps1
```

Or at 100-kHz SWD:

```text
powershell -ExecutionPolicy Bypass -File CubeIDE\tools\program_with_cubeide_tools.ps1 -SpeedKHz 100
```

That script:

```text
starts CubeIDE's OpenOCD
        -> halts over SWD
        -> GDB loads the ELF
        -> verifies sections
        -> resumes
        -> closes OpenOCD
```

After verifying the ELF, it issues `reset halt`, but OpenOCD has been configured to implement that reset with **AIRCR `SYSRESETREQ`** rather than the unavailable NRST pin. It then resumes from the freshly programmed reset vector.

## 9. Live Expressions: add only `g5mon`

Once debugging is connected:

```text
Window -> Show View -> Live Expressions
```

Add:

```text
g5mon
```

Expand it. The structure is updated at approximately **100 Hz**, rather than at the 16-kHz FOC/control rate, to minimize debug-monitoring overhead.

First sanity checks are:

```text
g5mon.magic                  0x47354D31
g5mon.update_counter         continuously increasing
g5mon.foc.safe_bringup       1
g5mon.foc.bridge_enabled     0
```

`FOC_SAFE_BRINGUP` remains `1` in this package. FOC output is therefore still forcibly zero.

### `g5mon.adc`

```text
battery_raw                  PA4
phase_a_raw                  PB0 / PHASE_A
phase_b_raw                  PA0 / PHASE_B
motor_ntc_raw                PA6, tentative motor NTC
battery_millivolt
```

### `g5mon.current`

```text
phase_a_model
phase_b_model
phase_c_model_reconstructed
phase_a_centiamp
phase_b_centiamp
phase_c_centiamp_reconstructed
rms_centiamp
offset_a
offset_b
offsets_ready
sensor_valid
```

The third current is reconstructed from the two measured phase-current channels. Current conversion still depends on the **provisional** `FOC_ADC_COUNTS_PER_AMP = 99` value and must not be treated as calibrated amperage yet.

### `g5mon.motor_ntc`

```text
raw
filtered_raw
resistance_ohm
limit_centiamp
valid
```

PA6 is treated as the **tentative motor NTC** based on the factory resistance-conversion and thermal-derating code plus the unidentified extra motor wire. We have not yet assigned a Celsius value because the NTC resistance/temperature curve is not physically characterized.

Current tentative policy:

```text
>= 8.000 kOhm    full NTC-derived current capability
8.000-6.000 kOhm progressively derated
<= 6.000 kOhm    NTC-derived current allowance reaches zero
```

`CAP_MOTOR_NTC_REQUIRE_VALID` remains `0` until the motor wire/PA6 connection is physically confirmed.

### `g5mon.capability`

```text
thermal_load_permille
absolute_limit_centiamp
thermal_limit_centiamp
battery_limit_centiamp
temperature_limit_centiamp
motor_ntc_limit_centiamp
global_limit_centiamp
profile_limit_centiamp
effective_limit_centiamp
profile
fault_flags
```

Every drive mode ultimately passes through this same capability ceiling.

Fault bits:

```text
0x01 current offsets not ready
0x02 current ADC rail condition
0x04 I^2 thermal hard condition
0x08 battery-low condition
0x10 second/future temperature high
0x20 PA6 motor-NTC invalid
0x40 PA6 motor-NTC hot
```

### `g5mon.motor`

```text
hall_a
hall_b
hall_c
hall_state
speed_rpm
speed_rpm_x16
```

### `g5mon.foc`

```text
target
iq_raw
id_raw
iq_centiamp
id_centiamp
pwm_a
pwm_b
pwm_c
dynamic_i_max_q4
error
bridge_enabled
safe_bringup
```

## 10. First bring-up sequence

Keep the wheel unloaded and `FOC_SAFE_BRINGUP = 1`.

Check in this order:

1. `g5mon.magic` and `update_counter`.
2. `safe_bringup = 1`, `bridge_enabled = 0`.
3. Current ADC raw values are not at 0 or 4095.
4. Current offsets settle and `offsets_ready` becomes 1.
5. `motor_ntc_raw`, filtered value, and calculated resistance are stable/plausible.
6. Measure the unidentified motor wire to Hall ground and warm the motor modestly; compare the ohmmeter with `g5mon.motor_ntc.resistance_ohm`.
7. Rotate the wheel by hand and verify the Hall state sequence and signed speed.
8. Tilt/move the board and verify IMU operation separately.
9. Only after current polarity/scaling, Hall order, PA6 identity, and all zero-output behavior are proven should `FOC_SAFE_BRINGUP` be reconsidered.

## 11. What has and has not been validated in this bundle

Validated here:

- Python patch/vendor scripts pass Python syntax compilation.
- the GNU Cortex-M3 startup assembles successfully with an ARM-targeting Clang assembler;
- the vector table is 360 bytes = 90 vectors, covering the GD32F1x0 Cortex-M3 core vectors plus IRQ 0 through IRQ 73;
- the 64-KiB/8-KiB GNU linker script links a minimal Cortex-M3 test image at `0x08000000` with stack top `0x20002000`;
- `g5Monitor.c` passes a strict host-side C syntax build against interface stubs.

Not yet validated here:

- a complete final `arm-none-eabi-gcc` link of the entire current Gen2 + EFeru FOC firmware, because that cross compiler is not installed in this execution environment;
- actual ST-Link programming of the generated CubeIDE build;
- physical PA6-to-motor-NTC confirmation;
- absolute phase-current calibration;
- enabled FOC motor operation.

Those are exactly the items the first CubeIDE build/debug session is intended to resolve.
