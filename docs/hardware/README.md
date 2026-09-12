# Hardware notes

This directory documents physical board variants and measured hardware facts used by the servo firmware.

## Current first target

- Gyroor G5 Gen2 hoverboard controller
- OLSZ OL20180703-V4.1 family
- Gen2.x layout associated with 2.1.20
- GD32F130C8 MCU

The project has two related controller PCBs conventionally referred to as MASTER and SLAVE. Those names are retained because there are real hardware differences. In the servo application both boards are peer, independent servo axes.

## Evidence policy

Pin assignments and peripherals should be classified as one of:

- confirmed by schematic/documentation
- confirmed by source/layout definition
- measured on hardware
- provisional / requires validation

Do not promote a provisional identification into a confirmed one without evidence.

For example, a possible motor-temperature input discussed during development is not yet considered physically confirmed and must not be treated as such in production protection logic.

## Future encoder inputs

Existing optical-switch connectors/pins may be good candidates for incremental encoder wiring because the electrical requirements are similar: sensor supply, ground, and digital edge inputs. This remains a hardware-validation item. Voltage levels, pull-ups, timer/input-capture capability, and MASTER/SLAVE pin differences must be confirmed before assigning those connectors to an encoder interface.

## Sensor model

The servo architecture should support independent rotor and axis sensors. Stock Hall sensors are the minimum supported source. Additional/repositioned Halls, an incremental encoder with index, an absolute magnetic encoder, or other feedback should be implementable behind sensor interfaces rather than embedded directly in the FOC algorithm.
