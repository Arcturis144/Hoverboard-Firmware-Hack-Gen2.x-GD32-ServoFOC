# Servo application notes

This directory is documentation for the new servo application. It is intentionally not a parallel firmware source tree.

Actual firmware additions should fit the existing `HoverBoardGigaDevice` structure and the conventions in the upstream `ai_guidelines*.md` files, such as `BldcXY.c` or `PilotXY.c`, with changes to core files kept minimal and justified.

The servo application will eventually provide independent-axis command handling and local torque, velocity, position, and impedance-capable control while reusing the existing target/layout infrastructure.

R0 contains no servo motor-control implementation. The purpose of this placeholder is to make the intended ownership and structure explicit before source changes begin.

## Source intake

ServoFOC will reuse external work selectively rather than merging another complete firmware tree. The primary implementation reference is hoverboardhavoc `foc-reimplement-from-spec-tidy` at `7650dffafb5b1d3c816e22fff66ebf65ae7fb138`, with specific commits pinned for ADC [analog-to-digital converter] timing, phase-current mapping, FOC [field-oriented control] math, Hall PLL [phase-locked loop], PI [proportional-integral] current control, anti-windup, DTC [dead-time compensation], and host tests.

Commissioning will also mine the existing `RemoteAutodetect` logic plus lucai11 `inserted_adc` at `814efb694a7799d5d288394addb2f6aaf785de43`, but active autodetect behavior remains confined to commissioning/service states. Runtime monitoring is passive.

Command transports use the same controller-owned validation path. The Jodaille/EFeru iBUS [FlySky serial receiver protocol] parser is a reference for FS-iA6B input, while WestlingPi and Homobonus provide examples of command plausibility rejection and last-valid-link-age telemetry. HUGS [Hoverboard Utility Gateway System], YujiKF, and hoverboardhavoc host tooling are secondary references for servo APIs [application programming interfaces], bench control, telemetry, and wireless bridges.

See `docs/provenance/SOURCES.md` for exact pins and licensing notes, and `docs/provenance/FORK_SURVEY.md` for the full fork-network survey.
