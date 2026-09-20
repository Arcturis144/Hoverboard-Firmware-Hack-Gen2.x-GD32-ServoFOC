# Hoverboard Gen2.x GD32 ServoFOC

This repository is a fork of `RoboDurden/Hoverboard-Firmware-Hack-Gen2.x-GD32` for development of a reusable, independent servo-drive application for Gen2.x hoverboard controller hardware.

The project retains the upstream firmware and its normal hoverboard applications. The servo implementation is an additional build/application, not a destructive replacement.

## Project goals

- Turn each supported hoverboard controller board into a self-contained servo axis.
- Retain MASTER and SLAVE distinctions where they describe real PCB hardware differences, while removing the logical master/slave dependency in the servo application.
- Support torque, velocity, position, and later impedance-style control on top of FOC (Field-Oriented Control).
- Use the stock Hall sensors as a minimum viable rotor/position source, with optional higher-resolution rotor or load encoders later.
- Keep hardware-specific timing, sensing, and pin mapping below reusable control interfaces so additional hoverboard boards can be supported later.
- Preserve compatibility with upstream Gen2.x development wherever practical.

## Reference-source policy

The public fork network around the RoboDurden Gen2.x GD32 firmware was surveyed on 2026-09-19. Useful work is treated as evidence and reference material, not as code to import wholesale. Exact repositories, branches, commits, licensing notes, and intended reuse are tracked in `docs/provenance/SOURCES.md`; the fork-by-fork survey is in `docs/provenance/FORK_SURVEY.md`.

The highest-value references currently include the hoverboardhavoc layout-2.1.20 FOC [field-oriented control] work, its GD32F130C8 IMU [inertial measurement unit] and PlatformIO bring-up, WestlingPi and Homobonus communication-safety work, Jodaille/EFeru iBUS [FlySky serial receiver protocol] parsing, lucai11 RemoteAutodetect/ADC [analog-to-digital converter] work, and HUGS [Hoverboard Utility Gateway System] robot/servo concepts. Board-specific constants and assumptions are always revalidated on the actual target hardware.

## Development policy


`main` is intended to remain close to RoboDurden upstream. Active servo work is developed on dedicated branches, beginning with `servo/r0-baseline`.

R0 establishes project structure and documentation only. It intentionally does not change motor behavior, PWM timing, ADC timing, current control, or FOC operation.

See:

- `docs/architecture/SERVO_ARCHITECTURE.md`
- `docs/ROADMAP.md`
- `docs/hardware/README.md`
- `docs/provenance/SOURCES.md`
- `docs/provenance/FORK_SURVEY.md`
- `external/README.md`

The upstream `ai_guidelines*.md` files remain authoritative for how new firmware code should fit the Gen2.x C architecture.
