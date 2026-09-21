# AI-guidelines audit — Gyroor G5 Phase 3 / Keil Studio package

Audit date: 2026-09-10

This package was reworked after explicitly reviewing all three root guidance files in the current RoboDurden GD32 repository:

- `ai_guidelines.md` — Git blob `c7d826a77008232db08e7e9cb472b9cf57701dae`
- `ai_guidelines_v0.md` — Git blob `4361e659dfbaad2dfeca2c3e299910e8aadc86bd`
- `ai_guidelines_v1.md` — Git blob `fd95d97ccbf662585ec53ef58c0c633c1b37cc9d`

`ai_guidelines_v0.md` is the historical prompt used to create the detailed v1 guidance. Its task-specific instruction to edit only the guidance file belongs to that historical documentation task; `ai_guidelines_v1.md` is the comprehensive coding guidance used for this firmware audit.

The installer verifies the exact three blobs above before patching. If any guidance file changes, it refuses automatic application and requires another audit.

## Changes made because of the audit

### 1. Preserve the bldcXY extension architecture

FOC remains a selected BLDC backend:

- `Inc/bldcFOC.h`
- `Src/bldcFOC.c`
- `BLDC_FOC` selector added to `Inc/bldc.h`

This follows the repository's explicit recommendation for adding a future FOC commutation method rather than flattening FOC logic into `bldc.c`.

### 2. Keep slow work out of the motor ISR

The first Keil Studio draft incorrectly performed the low-rate `g5mon` snapshot and the capability manager's RMS/thermal/NTC calculations from the PWM/ADC-DMA motor path.

The audited version splits this into:

- `DriveCapability_SampleFast()` — bounded PWM-rate sampling/accumulation only.
- `DriveCapability_Service()` — RMS, integer sqrt, thermal model and NTC processing in normal main-loop context.
- `G5Monitor_Service()` — debugger snapshot work in normal main-loop context.
- `BLDC_SERVICE()` — one optional backend extension hook called from each existing 5 ms main-loop variant.

Existing BC/SINE backends see `BLDC_SERVICE()` as a no-op.

The fast sampler still performs deterministic integer/64-bit accumulation at PWM rate. Its execution time has **not** yet been measured on the GD32F130C8, so ISR timing remains a required hardware validation before bridge enable.

### 3. Preserve the multi-target build matrix

The first draft selected `BLDC_FOC` globally. The audited config selects it only when:

```c
#if defined(GD32F130) && (LAYOUT == 20)
```

Other targets/layouts retain the upstream `BLDC_SINE` default.

The vendored EFeru generated `.c` files are also wrapped in `#ifdef BLDC_FOC`, because PlatformIO discovers `.c` files from `HoverBoardGigaDevice/Src/`. This prevents the generated FOC core from being linked into unrelated GD32F103/GD32E230/SINE builds.

### 4. Keep hardware facts in the layout file

Layout 2.1.20 owns the board-specific definitions used by Phase 3:

- `PHASE_A = PB0`
- `PHASE_B = PA0`
- tentative `MOTOR_NTC = PA6`
- provisional phase-current ADC counts/amp
- battery monitor integer scale

`foc_config.h` consumes these layout definitions rather than hard-coding PA6 or board ADC scaling itself.

PA6's **ADC capability is valid for GD32F130**, but its physical interpretation as the motor NTC is still a hypothesis. The code and documentation continue to label it tentative, and `CAP_MOTOR_NTC_REQUIRE_VALID` remains `0`.

### 5. Gate debug helpers

`g5Monitor.c` is compiled only under `G5_MONITOR`. The bring-up config enables `G5_MONITOR` only with the GD32F130/layout-20 FOC configuration.

### 6. Preserve safety behavior

`FOC_SAFE_BRINGUP` remains forced to `1`. The adapter therefore returns zero phase output and does not enable the bridge during this migration/build/debug stage.

The package does not remove the repository's hall-invalid, timeout, watchdog, charger, battery, or other existing safety behavior.

## Core files modified and rationale

The guidelines ask for special care around core infrastructure. This package changes only the minimum needed core files:

- `config.h` — selects layout 20 and the FOC backend for this one target/layout; preserves SINE elsewhere.
- `defines_2-1-20.h` — board-specific ADC/NTC facts and IMU selection.
- `bldc.h` — adds the new OOL FOC backend selector and a generic optional low-rate service hook.
- `defines.h` — FOC-specific ADC DMA structure, compile-time gated.
- `setup.c` — extends the ADC scan for the two phase-current channels plus tentative PA6 channel; hardware initialization belongs here.
- `main.c` — adds only `BLDC_SERVICE()` after the existing `steerCounter++` in both 5 ms loop variants. It is a no-op for existing backends and keeps slow FOC service work out of interrupts.
- `Hoverboard.uvprojx` — adds the new files only to the first/`GD32F130` target source list.

`bldc.c` and `it.c` are not modified.

## Verification performed in this package environment

Performed:

- Python syntax checks for all installer/vendor scripts.
- JSON syntax checks for VS Code/Arm tool manifests.
- static checks for feature gating, main-loop service placement, safe-bring-up lock, no CubeIDE residue, and no `g5mon` update call in `bldcFOC()`'s fast path.
- current upstream identity/hashes checked for the patched source files and all three AI-guidance files.
- GD32F130 ADC pin mapping reviewed: PA0, PA6 and PB0 are valid ADC-capable pins on this target.

Not performed here:

- PlatformIO compile (`pio` is not installed in this execution environment).
- AC6/Keil compile (`armclang` / Keil Studio is not installed here).
- CMSIS µVision-to-csolution conversion.
- link/memory-size validation on the finished image.
- target ISR timing measurement.
- ST-Link flash/debug on the physical controller.
- current-scale, Hall/phase mapping, PA6 physical function, or motor-drive validation.

Accordingly, this package is an **audited migration/source package**, not a claim that the firmware is hardware-qualified. Keep `FOC_SAFE_BRINGUP=1` through the first build, flash, and monitoring checks.
