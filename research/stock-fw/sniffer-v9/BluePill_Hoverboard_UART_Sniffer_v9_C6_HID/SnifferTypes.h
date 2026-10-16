#pragma once
#include <Arduino.h>

struct BaudGuess {
  uint32_t baud;
  uint16_t fitCount;
  uint16_t oneBitCount;
  uint16_t usedCount;
  uint16_t meanErrorPermille;
  uint32_t score;
};

struct CaptureFrame {
  uint8_t data[128];
  uint8_t len;
  uint8_t over;       // bytes beyond data[] were dropped
  uint32_t firstCyc;  // DWT cycle stamp of the first byte
  uint32_t lastCyc;   // DWT cycle stamp of the last byte
};
