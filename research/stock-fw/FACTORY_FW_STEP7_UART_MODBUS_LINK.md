# Gyroor G5 B/slave factory firmware — Phase 7: the board-to-board UART link

**Analysis:** 2026-10-16 · **Image:** factory B (slave) dump only · **Method:** static decoding, checked by `analyze_phase7_uart.py`
**Boundary:** nothing here has been seen on a wire yet. Every statement below is from the firmware image; the sniffer in `sniffer-v9/` exists to confirm or refute it.

## 1. Result in one paragraph

The stock firmware talks over **USART1 (PA2 TX / PA3 RX, alternate function 1) at 115200 baud, 8 data bits, no parity, 1 stop bit**, using **Modbus-RTU-style frames**: `[address][function][data…][CRC-16/MODBUS, low byte first]`. A frame ends when the line goes idle for one character (USART IDLE flag plus DMA channel 5, 32-byte receive buffer). The CRC routine at `0x08006E38` is bit-for-bit CRC-16/MODBUS (check value `0x4B37`). The real traffic is a **custom function `0x78`**: a 17-byte command frame answered by a 16-byte reply. Master code equals slave code (Phase 6), so both boards contain both halves; a RAM role flag selects which half runs.

## 2. Link parameters

| Item | Value | Evidence |
|---|---|---|
| Peripheral / pins | USART1 (`0x40004400`), PA2 TX, PA3 RX, AF1 | `0x08006FBE–CA` (AF1 on pins 2 and 3), literal `0x08007098` |
| Frame format | 115200 8N1 | call at `0x08006B9A–A4`: arguments `0x480` (×100 = 115200), 8, 0, 1 → init `0x08006F90` multiplies by 100 |
| RX framing | IDLE-line interrupt, DMA ch. 5, length = 32 − remaining count, then frame-ready state 2 | ISR `0x08005C84` (vector `0xB0`), `0x08005CA6`, `0x08005CF8` |
| Max accepted frame | 32 bytes | DMA buffer size |
| Accept test | byte 0 equals the halfword at `0x20000224`, whole-frame CRC residue is 0 | `0x08006E64–86` |
| CRC | CRC-16/MODBUS, init `0xFFFF`, tables at `0x08007120` / `0x08007220`, appended low byte first | emulation matches the textbook algorithm on 2000 random messages |
| Multi-byte fields | big-endian; CRC is the exception | `0x080047B6` (BE store), `0x080047BE` (LE store) |

The source of the address halfword (`0x20000224`) was not traced.

## 3. Function codes handled (dispatch at `0x08006E8A–B0`)

| Code | Behaviour | Status |
|---|---|---|
| `0x03` | read holding registers from the halfword bank at `0x200003F8`; quantity 1…`0x7C`, start+quantity ≤ 32, else exception 3 / 2 | decoded |
| `0x04` | same, from the bank at `0x20000438` | decoded |
| `0x06` | write one halfword to `bank[start]` at `0x200003F8`, call `0x08005E9C`, echo the request. **No bounds check before the store** in the code read | decoded |
| `0x01`, `0x02`, `0x05`, `0x0F`, `0x10` | handler is a bare return: no reply, no effect | decoded |
| `0x78` | custom command/state exchange, §4 | decoded; field meanings unresolved |
| anything else | exception reply: function \| 0x80, code 1 | decoded |

## 4. Function `0x78`

**Command (17 bytes):** `addr 78 | s16 @2 | s16 @4 | s16 @6 | b8 | b9 | u16 @10 | b12 | b13 | b14 | crc`
**Reply (16 bytes):** `addr 78 | s16 @2 | s16 @4 | s16 @6 | b8 | b9 | u16 @10 | b12 | b13 | crc`, reply byte 0 is the halfword at `0x20000224`.

Reply sources (`0x08005274`, literal pool `0x080052EC–08`): RAM `0x2000003C`, `0x200000A2`, `0x20000096`, `0x20000072`, `0x20000071`, `0x2000009A`, `0x20000141`, `0x2000016E`.

The handler (`0x08005FB4`) branches on the byte at `0x2000021E`:

- **zero:** reads bytes 2…14 (17-byte command), stores the 16-bit fields and unpacks single-bit flags from the later bytes into separate RAM flag bytes, and **tail-calls the reply builder**.
- **nonzero:** reads bytes 2…13 only (the 16-byte reply layout), stores them, **sends nothing**. Fields land in RAM `0x200000A4` (bytes 4–5), `0x20000134` (6–7), `0x20000072` (8), `0x20000071` (9), `0x2000009C` (10–11), `0x20000143` (12), `0x2000016E` (13); bytes 2–3 are not stored on this path.

Reading: the board whose flag is nonzero is the **commander** — it receives replies; the board whose flag is zero is the **responder** — it receives 17-byte commands and answers with 16-byte replies. This is an inference from the two code paths; it has not been seen on the wire, and where `0x2000021E` is set was not traced. Phase 6 saw that slots 8–9 of the parameter page are saved only when that flag is nonzero, and B's saved slots 8–9 look like unset stack bytes, which fits B being the responder.

On the responder path, bit 3 of a flags byte (byte 12 OR-ed with RAM `0x20000142`) goes to `0x2000008A` and bit 5 of byte 11 goes to `0x2000008C`, so **parameter slots 8 and 9 are runtime flags driven by the command stream** (consistent with their 0/non-zero use in Phase 6 §7). Which physical quantities bytes 2–7 carry (speed, torque, or something else) is **not** established; signedness of the reply's 16-bit fields is assumed.

## 5. Parameter page, corrected

Phase 6 §7 called the `0x08007C00` page a parameter store. The main loop at `0x08006C5A` (literal pool `0x08006DF4–34`) shows how it is filled: a command flag copies six halfwords from `0x200001F8`/`0x200001FE` into slots 0–5, converts two floats from `0x200001CC`/`0x200001C4` (÷100) into slots 6–7, and calls the writer `0x08005370`. Two more flag bytes toggle slots 8 and 9 and save. So the page is **host-settable configuration saved on command**, not factory calibration. The producers of the RAM buffers at `0x200001F8…0x20000203` and `0x200001C4/CC` were not traced; a sniffer capture around a settings change would show them.

## 6. Evidence grading

| Claim | Grade |
|---|---|
| 115200 8N1 on USART1, PA2/PA3 AF1 | **verified** (exact halfword/word checks) |
| IDLE + DMA receive, 32-byte buffer | **verified** for the structure; buffer size from the loop bound `32 − counter` |
| CRC is CRC-16/MODBUS | **verified** (emulation vs textbook, 2000 random messages, residue 0) |
| Dispatch table, stub handlers, fn 3/4/6 limits | **verified** (byte checks), semantics **decoded** |
| `0x78` command/reply sizes and field offsets | **verified** offsets; **inferred** roles |
| Commander/responder reading of the role flag | **inferred** |
| Meaning of `0x78` fields | **unknown** |
| Timing (period of `0x78`, reply latency) | **unknown** — sniffer measurement |

## 7. What the sniffer should confirm (with `sniffer-v9/`)

1. M-line frames are CRC-OK, 17 bytes, function `0x78`; S-line frames are CRC-OK, 16 bytes, function `0x78`, with the same address byte. If the roles are reversed or both lines carry 17 bytes, the role reading in §4 is wrong.
2. Frames never exceed 32 bytes and the idle gap between a command and its reply is at least one character time (87 µs), otherwise the stock receiver could not delimit them.
3. The `0x78` period and the command-to-reply latency (printed by `stock_link_parse.py`) give the real scheduling of the link.
4. Steady-state byte values: which of bytes 2–7 move when the wheel is turned or the throttle input changes, which flag bits toggle with the state machine, and whether the reply's `u16 @10` tracks a measured quantity.
5. A UART settings change (if the board's host accepts one) should show the writes to slots 0–7 landing in the parameter page — readable over SWD without halting.
6. Do **not** transmit on either line. Function `0x06` writes with no visible bound check, so injected frames could corrupt RAM.

## 8. Corrections to earlier phases

- Phase 6 §7 wording "runtime parameter store" stands, but its content is configuration set over this link, not calibration.
- The earlier sniffer README (v8) assumes the lines carry something detectable by edge timing at an unknown baud. The baud is known (115200), so v9 fixes it.
