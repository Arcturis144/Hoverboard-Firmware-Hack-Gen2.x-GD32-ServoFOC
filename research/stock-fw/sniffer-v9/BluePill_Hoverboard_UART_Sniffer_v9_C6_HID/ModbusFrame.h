// ModbusFrame.h - pure C++ helpers for the v9 sniffer (no Arduino dependency,
// so they can be unit-tested on a PC; see test_modbus_frame.cpp).
//
// Link format decoded from the factory B firmware (Phase 7 report):
//   Modbus-RTU-style frames, 115200 8N1, CRC-16/MODBUS appended low byte first.
#pragma once
#include <stdint.h>

// CRC-16/MODBUS (poly 0xA001 reflected, init 0xFFFF). Computed over a whole
// received frame including its two CRC bytes the result is 0 when valid.
static inline uint16_t modbusCrc16(const uint8_t *p, uint16_t n)
{
  uint16_t crc = 0xFFFF;
  while (n--) {
    crc ^= *p++;
    for (uint8_t i = 0; i < 8; ++i)
      crc = (crc & 1U) ? (uint16_t)((crc >> 1) ^ 0xA001U) : (uint16_t)(crc >> 1);
  }
  return crc;
}

static inline bool modbusFrameOk(const uint8_t *p, uint16_t n)
{
  return n >= 4 && modbusCrc16(p, n) == 0;
}

// Idle gap that ends a frame, in CPU cycles: charTimesX10/10 characters of
// 11 bit times (start + 8 data + stop + margin, as in Modbus RTU timing).
static inline uint32_t gapCycles(uint32_t cpuHz, uint32_t baud, uint8_t charTimesX10)
{
  const uint64_t bitsX10 = 11ULL * charTimesX10;           // bit times x10
  return (uint32_t)(((uint64_t)cpuHz * bitsX10) / (10ULL * baud));
}

// Converts DWT cycle stamps to a free-running 32-bit microsecond count using
// only 32-bit division (the sniffer avoids pulling in 64-bit division).
struct UsClock {
  uint32_t lastCyc;
  uint32_t rem;   // leftover cycles (< mhz)
  uint32_t us;    // wraps every ~71.6 minutes; the PC-side parser unwraps it
  uint32_t mhz;

  void begin(uint32_t nowCyc, uint32_t cpuMHz) { lastCyc = nowCyc; rem = 0; us = 0; mhz = cpuMHz; }

  // Call at least once every ~50 s with the current cycle counter.
  void advance(uint32_t nowCyc)
  {
    const uint32_t d = nowCyc - lastCyc + rem;
    us += d / mhz;
    rem = d % mhz;
    lastCyc = nowCyc;
  }

  // Microsecond time of a stamp taken shortly before (or just after) the last
  // advance().
  uint32_t stampToUs(uint32_t stampCyc) const
  {
    const int32_t back = (int32_t)(lastCyc - stampCyc);
    return (back >= 0) ? us - (uint32_t)back / mhz : us + (uint32_t)(-back) / mhz;
  }
};
