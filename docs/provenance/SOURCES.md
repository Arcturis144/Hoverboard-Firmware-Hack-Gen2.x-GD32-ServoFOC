# Source and provenance register

This file records upstream and reference sources used by the ServoFOC project. Before source code is adapted from any external project, record the exact repository, commit, role, and license here.

## Primary upstream

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x-GD32

- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x-GD32
- Role: primary firmware upstream and architectural base
- License: GPL-3.0
- R0 baseline commit: `396a27be40599f6d73ce36eca15be8200df0ec72`
- Policy: preserve a clean merge path from upstream wherever practical

### RoboDurden Hoverboard-Firmware-Hack-Gen2.x

- Repository: https://github.com/RoboDurden/Hoverboard-Firmware-Hack-Gen2.x
- Role: layouts, manuals, historical/community hardware reference
- Policy: documentation/reference source, not the primary firmware tree

## FOC and commissioning references

### hoverboardhavoc Gen2.x GD32 / RoboDurden PR #28

- Role: primary candidate source for layout-2.1.20 FOC work, current acquisition, Hall interpolation/PLL, and deterministic PWM-relative current sampling
- Status: reference/adaptation source; draft/unmerged work must not be imported wholesale
- Exact reference commit: TO BE PINNED before R1/R4 adaptation
- Notes: motor-specific commissioning constants and bench hacks are not universal configuration values

### EFeru hoverboard-firmware-hack-FOC

- Repository: https://github.com/EFeru/hoverboard-firmware-hack-FOC
- Role: mature FOC behavior, protection, anti-windup, current limiting, regen, and commissioning reference
- Exact reference commit: TO BE PINNED before source adaptation

### EFeru bldc-motor-control-FOC

- Repository: https://github.com/EFeru/bldc-motor-control-FOC
- Role: control-algorithm/model reference
- Exact reference commit: TO BE PINNED before source adaptation

### miniFOC

- Repository: https://github.com/ZhuYanzhen1/miniFOC
- Role: GD32F130-class commissioning, alignment, phase-sequence detection, center-aligned PWM, preload/shadow, ADC-current-path, and fixed-point design reference
- License: AGPL-3.0
- Exact reference commit: TO BE PINNED before source adaptation
- Policy: use concepts/tactics as design reference; do not casually copy AGPL source into the primary GPL firmware tree

## Provenance rules

1. Reference repositories are not firmware dependencies unless explicitly promoted to that role.
2. Pin exact commits before adapting code or relying on behavior.
3. Keep copied/adapted code attribution and license obligations explicit.
4. Prefer independent implementation of concepts when license compatibility or architectural fit is uncertain.
5. Do not copy motor-specific calibration constants into generic defaults.
