// Host test for ModbusFrame.h:  g++ -std=c++11 -I<sketch dir> test_modbus_frame.cpp -o t && ./t
#include <cstdio>
#include <cstring>
#include <cstdlib>
#include "ModbusFrame.h"

static int fails = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL line %d: %s\n", __LINE__, #c); ++fails; } } while (0)

int main()
{
  // CRC-16/MODBUS check value
  CHECK(modbusCrc16((const uint8_t *)"123456789", 9) == 0x4B37);
  // Textbook Modbus request 01 03 00 00 00 0A -> CRC bytes C5 CD (low byte first)
  const uint8_t req[] = {0x01, 0x03, 0x00, 0x00, 0x00, 0x0A, 0xC5, 0xCD};
  CHECK(modbusCrc16(req, 6) == 0xCDC5);
  CHECK(modbusFrameOk(req, 8));
  uint8_t bad[8]; std::memcpy(bad, req, 8); bad[3] ^= 0x10;
  CHECK(!modbusFrameOk(bad, 8));
  CHECK(!modbusFrameOk(req, 3));

  // Build a 17-byte fn 0x78 request and a 16-byte reply and check both validate.
  uint8_t cmd[17] = {0x02, 0x78, 0x01, 0x2C, 0xFF, 0x38, 0, 0, 0x04, 0x25, 0, 0, 0, 0, 0, 0, 0};
  uint16_t c = modbusCrc16(cmd, 15); cmd[15] = c & 0xFF; cmd[16] = c >> 8;
  CHECK(modbusFrameOk(cmd, 17));
  uint8_t rep[16] = {0x02, 0x78, 0, 1, 0, 2, 0, 3, 4, 5, 0, 6, 7, 8, 0, 0};
  c = modbusCrc16(rep, 14); rep[14] = c & 0xFF; rep[15] = c >> 8;
  CHECK(modbusFrameOk(rep, 16));

  // Any single-bit error in any position is detected (CRC-16 guarantees it).
  for (int i = 0; i < 17; ++i) for (int b = 0; b < 8; ++b) {
    uint8_t t[17]; std::memcpy(t, cmd, 17); t[i] ^= (uint8_t)(1U << b);
    CHECK(!modbusFrameOk(t, 17));
  }

  // Gap: 1.5 characters of 11 bits at 115200 with a 72 MHz clock = 143.2 us = about 10 312 cycles
  CHECK(gapCycles(72000000UL, 115200UL, 15) > 10000UL && gapCycles(72000000UL, 115200UL, 15) < 10500UL);
  CHECK(gapCycles(72000000UL, 9600UL, 35) == (uint32_t)((72000000ULL * 11 * 35) / (10ULL * 9600)));  // 3.5 chars @ 9600

  // UsClock: steady 72 cycles per microsecond, across a counter wrap.
  UsClock k; k.begin(0xFFFFFF00UL, 72);
  uint32_t now = 0xFFFFFF00UL;
  uint32_t expectedCycles = 0;
  for (int i = 0; i < 100000; ++i) {
    now += 1000;                     // 1000 cycles per step, crosses the 32-bit wrap
    expectedCycles += 1000;
    k.advance(now);
  }
  CHECK(k.us == expectedCycles / 72);
  // A stamp 720 cycles (10 us) before the last advance, and one 144 cycles after it.
  CHECK(k.stampToUs(now - 720) == k.us - 10);
  CHECK(k.stampToUs(now + 144) == k.us + 2);

  std::printf(fails ? "FAILED (%d)\n" : "all tests passed\n", fails);
  return fails ? 1 : 0;
}
