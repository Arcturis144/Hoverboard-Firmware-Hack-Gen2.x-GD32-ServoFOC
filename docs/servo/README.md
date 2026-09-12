# Servo application notes

This directory is documentation for the new servo application. It is intentionally not a parallel firmware source tree.

Actual firmware additions should fit the existing `HoverBoardGigaDevice` structure and the conventions in the upstream `ai_guidelines*.md` files, such as `BldcXY.c` or `PilotXY.c`, with changes to core files kept minimal and justified.

The servo application will eventually provide independent-axis command handling and local torque, velocity, position, and impedance-capable control while reusing the existing target/layout infrastructure.

R0 contains no servo motor-control implementation. The purpose of this placeholder is to make the intended ownership and structure explicit before source changes begin.
