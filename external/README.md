# External reference sources

`external/` is reserved for pinned reference repositories or other external source material used during development.

External projects are **not** automatically part of the firmware build and should not be added to compiler include/source paths merely because they exist here.

Before adding a reference source:

1. record it in `docs/provenance/SOURCES.md`;
2. record the exact commit/tag and branch when relevant;
3. record its license or mark the license as requiring verification before copying source;
4. record whether it is a reference, test dependency, tool dependency, or production dependency;
5. keep production firmware independent unless the dependency is deliberate;
6. revalidate all board-specific constants, pin assignments, timing assumptions, current scaling, and motor parameters on the actual target hardware.

The maintained project-wide inventory is [docs/provenance/SOURCES.md](../docs/provenance/SOURCES.md), covering current use, future candidates, the full recorded fork roster and unresolved historical references. The dated fork survey remains in [FORK_SURVEY.md](../docs/provenance/FORK_SURVEY.md).

The policy above governs new intake; it does not imply that inherited dependencies are absent. `HoverBoardGigaDevice/platformio.ini` already selects `CommunityGD32Cores/platform-gd32` and hoverboardhavoc's modified framework package. The former has no immutable revision suffix and the latter follows a named branch. The reference commits below are survey revisions, not build locks.

## Recorded early reference revisions

- hoverboardhavoc Gen2.x GD32 `foc-reimplement-from-spec-tidy`, head `7650dffafb5b1d3c816e22fff66ebf65ae7fb138`: FOC [field-oriented control], Hall PLL [phase-locked loop], PI [proportional-integral] current control, PWM [pulse-width modulation]-relative sampling, and host-test reference.
- hoverboardhavoc `hoverboard-gen2.1-hack-GD-imu`, `14e01f24ee5f5df9393a89d0ead54363e3210e9b`: split GD32F130C8 board-family IMU [inertial measurement unit] and PlatformIO reference.
- hoverboardhavoc `HoverboardImu`, `b7682c98295b05ca43adcbd302954bd9134ecc0c`: raw onboard IMU [inertial measurement unit] investigation.
- hoverboardhavoc `gd32-pio-spl-package`, `8849cb2af35f16431734d9e9c101de648f54f061`: PlatformIO/GD32 SPL [standard peripheral library] clock-source support; already selected by the build through a floating branch.
- hoverboardhavoc `regtrace`, `673e6b005c8272d0bf9ccd2b63938630ad4ab70e`: peripheral-register verification tooling.
- WestlingPi Gen2.x GD32 `debug-safety-limit`, `32eafc60ae4377d24e3c7824f92bed0fd5fada89`: command plausibility/failsafe reference.
- Homobonus Gen2.x GD32 `spatialrag-agv`, `4986a0e4de308b395b9bcce400c299c547e20985`: link-age diagnostics and UART [universal asynchronous receiver-transmitter] host parser/logger reference.
- Jodaille `hoverboard-sideboard-hack-GD`, `c063fdf2e1b0e11f2db70040c5e6d32e5b79019f`: iBUS [FlySky serial receiver protocol] parser/checksum/timeout reference.
- lucai11 Gen2.x GD32 `inserted_adc`, `814efb694a7799d5d288394addb2f6aaf785de43`: RemoteAutodetect and inserted ADC [analog-to-digital converter] reference.
- RobDoozer HUGS [Hoverboard Utility Gateway System], `ed1358171c98c68bd7d82a76eb62f0c7c094a47b`: robot/servo protocol and low-speed control concepts.

No external repository has been promoted to a production dependency merely by being listed here.
