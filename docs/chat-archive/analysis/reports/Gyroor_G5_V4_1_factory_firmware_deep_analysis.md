# Gyroor G5 / OL20190703-V4.1 Factory Firmware Reverse Engineering

## Scope and confidence

This report correlates the factory A/master and B/slave GD32F130C8 firmware dumps against the documented Gen2.1.20 (`defines_2-1-20.h`) hardware layout.

Factory images analyzed:

- A/master: `oriFW(1).bin`, 64 KiB
- B/slave: `oriFWB.bin`, 64 KiB

The board revision is treated here as **OL20190703-V4.1**.

This is a static reverse-engineering pass. Function names below are reconstructed names, not original manufacturer symbols. Statements marked **confirmed** come directly from peripheral/register access in the factory binary. Statements marked **probable** are based on control flow plus the Gen2.1.20 source as a hardware/semantic reference.

---

## 1. Overall architecture

The factory firmware confirms that A and B are not a "smart master + dumb motor slave" pair. Each board contains the complete local motor-control stack:

- six complementary BLDC PWM outputs;
- three Hall inputs;
- multiple ADC channels for current/battery sensing;
- its own MPU60x0-compatible IMU;
- its own balance/motion processing;
- power latch/button handling;
- a bidirectional A<->B UART.

The low-level motor and IMU paths are closely related on both images. The master/slave distinction is concentrated mainly in supervisory state and communications behavior.

A useful high-level model is:

```text
A/master half                          B/slave half
-------------                          ------------
local MPU60x0                          local MPU60x0
     |                                     |
attitude / pitch processing            attitude / pitch processing
     |                                     |
local motor command                   local motor command
     |                                     |
Hall + current feedback               Hall + current feedback
     |                                     |
TIMER0 BLDC bridge                    TIMER0 BLDC bridge
       \                               /
        \----- PA2/PA3 USART1 --------/
```

---

## 2. Confirmed Gen2.1.20 hardware map

The following factory accesses agree with the current Gen2.1.20 board definition.

| Function | Pin(s) | Factory evidence | Confidence |
|---|---|---|---|
| Hall A | PC13 | GPIOC bit 13 included in 3-bit Hall state | confirmed |
| Hall B | PA1 | GPIOA bit 1 included in 3-bit Hall state | confirmed |
| Hall C | PC14 | GPIOC bit 14 included in 3-bit Hall state | confirmed |
| BLDC high outputs | PA8, PA9, PA10 | configured together for TIMER0 AF2 | confirmed |
| BLDC low/complementary outputs | PB13, PB14, PB15 | configured together for TIMER0 AF2 | confirmed |
| A<->B UART | PA2 / PA3 | USART1 plus GPIOA AF1 setup | confirmed |
| IMU SCL | PB6 | software-I2C GPIO toggling | confirmed |
| IMU SDA | PB7 | software-I2C GPIO read/write | confirmed |
| Button | PA12 | input sampled in startup/power-state code | confirmed |
| Self hold | PB12 | output asserted during startup | confirmed |
| ADC ch0 | PA0 | regular ADC sequence | confirmed |
| ADC ch8 | PB0 | regular ADC sequence | confirmed |
| ADC ch6 | PA6 | regular ADC sequence | confirmed |
| ADC ch4 | PA4 | regular ADC sequence | confirmed |

The Gen2.1.20 reference identifies PA0/PB0 as the two phase-current channels and PA4 as battery voltage. PA6 remains an additional factory analog channel whose final physical meaning is not yet proven.

---

## 3. IMU subsystem — present and active on BOTH boards

### 3.1 Device/protocol identification

Both A and B contain an active MPU60x0-compatible path.

The factory code:

- addresses I2C device `0x68`;
- reads 14 consecutive bytes beginning at register `0x3B`;
- writes:
  - `0x6B` PWR_MGMT_1,
  - `0x19` SMPLRT_DIV,
  - `0x1A` CONFIG,
  - `0x1B` GYRO_CONFIG,
  - `0x1C` ACCEL_CONFIG.

This is an extremely strong MPU6050/MPU6500-family signature.

### 3.2 Factory IMU read/process function

A/master function begins around:

`0x08000CC4`

B/slave equivalent begins around:

`0x08000CCC`

The start is reconstructable approximately as:

```c
void imu_update(void)
{
    uint8_t raw[14];

    i2c_read_regs(0x68, 0x3B, raw, 14);

    int16_t ax = (raw[0]  << 8) | raw[1];
    int16_t ay = (raw[2]  << 8) | raw[3];
    int16_t az = (raw[4]  << 8) | raw[5];

    // raw[6..7] = temperature and is not handled with the same motion path

    int16_t gx = (raw[8]  << 8) | raw[9];
    int16_t gy = (raw[10] << 8) | raw[11];
    int16_t gz = (raw[12] << 8) | raw[13];

    // calibration / stability detection
    // axis sign/orientation conversion
    // filtering and attitude calculations
    // resulting state written to the controller's motion structure
}
```

The function stores all six motion axes into a persistent RAM structure and performs considerably more work afterward. It includes:

- stationary/equality checking over repeated samples;
- calibration/stability counters;
- signed axis inversion;
- filtering/state accumulation;
- floating-point math helper calls;
- derived attitude/motion values.

This is not merely an IMU driver. It is part of the local balance/attitude path.

### 3.3 IMU initialization

The initialization sequence around `0x08001140` writes the MPU configuration registers listed above.

Both images contain the same basic initialization path.

### 3.4 Consequence for the hoverboard control scheme

Each half has its own local IMU because each half needs a local pitch/rate estimate to produce the torque request for its own wheel.

The A<->B link therefore appears to coordinate the halves rather than replacing the slave's local attitude loop.

---

## 4. Hall / wheel-position subsystem

A confirmed Hall reader exists around the `0x08006Axx` region.

It constructs the Hall state from:

```c
hall =
      (!!(GPIOC & (1 << 13)) << n0)
    | (!!(GPIOA & (1 <<  1)) << n1)
    | (!!(GPIOC & (1 << 14)) << n2);
```

The exact bit ordering in the internal state can be renamed later, but the physical inputs are proven.

Because the Hall pattern is available locally, the firmware can derive:

- commutation sector;
- wheel direction;
- Hall transition count;
- wheel speed / period;
- odometric movement at Hall-edge resolution.

For the mower, these are the important values to expose later.

---

## 5. Motor bridge / PWM subsystem

The factory firmware configures TIMER0 complementary PWM on:

```text
PA8   high-side phase
PA9   high-side phase
PA10  high-side phase

PB13  complementary low-side phase
PB14  complementary low-side phase
PB15  complementary low-side phase
```

That is the same six-pin topology used by Gen2.1.20.

This establishes that Gen2.1.20 has the correct critical bridge-output mapping for this V4.1 hardware.

The factory vector table also has active timer/DMA/ADC interrupt paths associated with the motor loop. The structure is consistent with:

```c
timer/PWM event
    -> trigger ADC sampling
    -> ADC/DMA completion
    -> update current/control state
    -> update motor commutation/PWM
```

The exact factory control law has not yet been completely reconstructed.

---

## 6. ADC/current/battery subsystem

The factory regular ADC sequence is:

```text
sequence slot 0 -> ADC_IN0 -> PA0
sequence slot 1 -> ADC_IN8 -> PB0
sequence slot 2 -> ADC_IN6 -> PA6
sequence slot 3 -> ADC_IN4 -> PA4
```

Cross-reference to Gen2.1.20:

```text
PA0 = phase-current sense
PB0 = phase-current sense
PA4 = battery-voltage sense
PA6 = unresolved additional analog input
```

The important safety implication is that the Gen2.1.20 source has the same phase-current and battery channels used by the factory board.

---

## 7. Power-button and self-latch path

Factory startup code:

- treats **PA12** as the button input;
- drives **PB12** as the self-hold/latch output.

That agrees with Gen2.1.20.

This is relevant to the slave-board behavior observed during SWD access: the slave board was only readily awake while the master/slave harness was connected. The inter-board harness therefore participates in the normal powered state, directly or indirectly.

Static firmware analysis alone has not yet proven whether the wake condition is:

1. a power rail carried on the 4-wire harness,
2. a logic enable condition,
3. a UART keepalive,
4. or a combination.

The physical harness should be measured before assigning that behavior to the UART protocol itself.

---

## 8. Factory USART1 / master-slave communications

### 8.1 Physical interface

USART1 is confirmed on:

```text
PA2 / PA3
```

which is the factory A<->B link and matches Gen2.1.20.

### 8.2 USART1 IRQ

The factory USART1 vector points to approximately:

`0x08005C84`

on both images.

This handler performs normal USART service/receive work and then calls a higher-level packet-processing routine.

### 8.3 Factory packet dispatcher

A higher-level dispatcher exists around:

`0x08006E64`

It:

- waits for a complete receive state;
- references a receive buffer near `0x20000478`;
- validates a 16-bit CRC/check value;
- reads a command/function byte;
- dispatches at least these command IDs:

```text
0x01
0x02
0x03
0x04
0x05
0x06
0x0F
0x10
0x78
```

The CRC implementation immediately preceding the dispatcher uses lookup tables and returns a 16-bit value.

This factory protocol is therefore considerably richer than the simplified current open-source `SerialMaster2Slave` / `SerialSlave2Master` structures.

### 8.4 Command 0x78 appears to be a major state/control packet

The command-0x78 handler consumes a long payload and decodes:

- multiple signed 16-bit fields;
- multiple single-byte fields;
- packed bit flags;
- several controller-state values.

The first part behaves approximately like:

```c
int16_t f0 = be16(payload[2],  payload[3]);
int16_t f1 = be16(payload[4],  payload[5]);
int16_t f2 = be16(payload[6],  payload[7]);

uint8_t flags0 = payload[8];
uint8_t flags1 = payload[9];

uint16_t f3 = be16(payload[10], payload[11]);

uint8_t flags2 = payload[12];
uint8_t flags3 = payload[13];
uint8_t flags4 = payload[14];
```

The handler then fans those fields out into many global state variables and bit-level flags.

This is one of the strongest targets for further live protocol reverse engineering because a UART capture while moving/tilting one half should allow the signed fields to be correlated quickly with:

- pitch,
- wheel speed,
- requested torque,
- steering,
- Hall/odometer values,
- mode/fault flags.

---

## 9. Factory A versus B

The two images have identical vector tables and strongly homologous low-level code.

They are best described as **closely related role-specific builds from the same codebase**, not unrelated firmwares.

Shared/near-identical subsystems include:

- Hall handling;
- PWM/motor hardware setup;
- ADC;
- MPU60x0 access and processing;
- common peripheral libraries;
- common USART hardware support.

The meaningful A/B differences are concentrated in:

- supervisory/startup behavior;
- state-machine handling;
- communication-side behavior;
- small data/config regions near the end of programmed flash.

This supports the model:

```text
same local balance motor controller
            +
different master/slave supervisory role
```

---

## 10. Interrupt-vector identification

Using the GD32F1x0 vector ordering as the reference, the factory vector table exposes active handlers including:

- SysTick;
- EXTI4_15;
- DMA channel groups;
- ADC/comparator;
- TIMER0 break/update/trigger/commutation;
- TIMER1;
- TIMER2;
- USART1.

Particularly relevant addresses include approximately:

```text
EXTI4_15                0x080023D9
DMA ch3/4               0x08002019
ADC/CMP                  0x08000A59
TIMER0 BRK/UP/TRG/COM    0x08005481
TIMER1                   0x080054C1
TIMER2                   0x080054F5
USART1                   0x08005C85
```

The identical vector addresses in A and B reinforce the common-codebase conclusion.

---

## 11. Reconstructed subsystem map

Current best semantic map:

```text
0x08000CC4 A / ~0x08000CCC B
    imu_read_and_process()

0x08001140
    imu_init / MPU register configuration

0x080023D8
    EXTI4_15 IRQ path
    likely button/Hall/other external-event handling; needs finer separation

0x08005480
    TIMER0 combined IRQ
    motor-control timing

0x08005C84
    USART1 IRQ
    A<->B communications service

0x08005FBx - 0x0800622x
    large command/state packet decoding
    including packed status/control fields

0x08006Axx
    local Hall-state sampling/processing

0x08006E38
    CRC/check calculation

0x08006E64
    received-packet validation/command dispatch

0x08006Fxx - 0x080071xx
    packet transmit/build and USART setup/support
```

Addresses can shift by a few bytes between A and B because the two builds are not byte-identical.

---

## 12. What Gen2.1.20 can safely be used as a semantic reference for

High confidence:

- pin names and physical functions;
- TIMER0 motor outputs;
- Hall pins;
- ADC pin identity;
- UART pin identity;
- self-hold;
- button;
- IMU bus and sensor family;
- general division into motor / ADC / Hall / IMU / communications subsystems.

Lower confidence:

- factory function names;
- exact control-loop equations;
- factory packet-field names;
- exact use of PA6;
- role of every LED/photo/charge-state input;
- exact semantics of the tail configuration bytes.

The open firmware is a reverse-engineered replacement implementation, not the manufacturer's original source. It should therefore be used as a hardware and conceptual map, not assumed to be source-equivalent instruction-for-instruction.

---

## 13. Best next reverse-engineering steps

### A. Capture the factory A<->B UART

This is now the highest-value experiment.

Use a logic analyzer or UART adapter with high-impedance RX inputs on PA2 and PA3 while leaving A and B normally connected.

Record:

1. idle powered system;
2. tilt both halves forward;
3. tilt both halves backward;
4. tilt only A;
5. tilt only B;
6. rotate one wheel by hand;
7. rotate the other wheel by hand;
8. press/release the power button.

Because the factory dispatcher and CRC are already located, a captured byte stream can be matched to packet boundaries and command IDs quickly.

### B. Determine USART baud rate

The USART initialization code can be statically resolved, or measured immediately from a logic-analyzer capture.

### C. Resolve command 0x78 fields

The signed 16-bit values in 0x78 are excellent candidates for continuous physical quantities.

A controlled capture will likely identify them much faster than static analysis alone.

### D. Resolve PA6

Measure the PA6-connected circuitry or observe which ADC variable changes with:

- motor current,
- supply voltage,
- charge state,
- temperature,
- foot/pressure sensor state.

### E. Locate the two blue LED JST GPIOs

Since those connectors are potential PPM input points for the mower, continuity from the connectors to the known Gen2.1.20 LED GPIOs can identify the cleanest accessible input without touching the MCU.

---

## 14. Practical conclusion for the RC mower

The factory binaries and the Gen2.1.20 hardware definition agree on the critical motor-controller wiring strongly enough that **Gen2.1.20 is the correct open-firmware hardware layout to start from**.

For eventual autonomous operation, the original hardware already gives each side:

```text
wheel Hall odometry
+ local 6-axis IMU
+ current sensing
+ motor bridge
+ bidirectional inter-board UART
```

That is a strong base for a mower traction controller.

For the initial RC phase, the cleanest modification remains to preserve:

- PA2/PA3 for A<->B;
- PB6/PB7 for the local IMU;

and repurpose an accessible unused LED-header GPIO on the master as a PPM receiver input.
