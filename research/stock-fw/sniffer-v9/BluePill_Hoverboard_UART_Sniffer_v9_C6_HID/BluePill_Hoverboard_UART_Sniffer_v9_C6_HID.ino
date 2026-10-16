/*
  BluePill_Hoverboard_UART_Sniffer_v9_C6_HID.ino

  Derived from the user's v8 sketch. Target: STM32F103C6 Blue Pill behind the
  HID Bootloader 2.2 (application linked at 0x08000800).

  What changed from v8 (reasons are in research/stock-fw/FACTORY_FW_STEP7_UART_MODBUS_LINK.md):
    * Fixed 115200 8N1 by default. The factory B firmware initialises USART1
      with exactly that, so no traffic is needed at start-up. Set
      SNIFFER_AUTOBAUD to 1 to get the v8 edge-timing detector back.
    * Every received byte is time-stamped in the interrupt (DWT cycle counter),
      not when the main loop drains the ring, so USB stalls cannot merge or
      split frames or distort timings.
    * Frames end after FRAME_GAP_X10/10 character times of silence
      (default 1.5), close to the 1-character IDLE-line rule of the stock RX.
    * Each frame gets CRC-16/MODBUS verified and its function code printed.
    * Framing/noise/overrun errors and ring overflows are counted and
      reported (v8 counted overflows but never printed them).

  Passive wiring is unchanged:
    master PA2 TX -> Blue Pill PA10 (USART1 RX)
    slave  PA2 TX -> Blue Pill PA3  (USART2 RX)
    GND            -> Blue Pill GND
  Never connect Blue Pill PA9 or PA2 to a hoverboard.

  STATUS: the pure helpers in ModbusFrame.h are unit-tested on a PC and this
  file passes a syntax check against a mock of the Arduino/CMSIS API. It has
  NOT been compiled with the real STM32duino core or run on a Blue Pill, and
  its flash size on the 30 KiB budget is unmeasured.
*/

#include <Arduino.h>
#include "SnifferTypes.h"
#include "ModbusFrame.h"

#ifndef SNIFFER_AUTOBAUD
#define SNIFFER_AUTOBAUD 0
#endif
#ifndef FIXED_BAUD
#define FIXED_BAUD 115200UL
#endif
#ifndef FRAME_GAP_X10
#define FRAME_GAP_X10 15   // 1.5 character times of silence ends a frame
#endif

static const pin_size_t MASTER_RX_PIN = PA10;
static const pin_size_t SLAVE_RX_PIN  = PA3;

/*
  Required STM32duino 3.0.0 settings (unchanged from v8):
    Board part number: BluePill F103C6 (32K)
    U(S)ART support: Disabled
    USB support: CDC (generic 'Serial' supersede U(S)ART)
    USB speed: Low/Full Speed
    Optimize: Smallest (-Os default)
    Debug symbols and core logs: Symbols Enabled (-g)
    C Runtime Library: Newlib Nano (default)
    Upload method: HID Bootloader 2.2
*/

#if defined(HAL_UART_MODULE_ENABLED)
  #error "Select Tools > U(S)ART support > Disabled. v9 drives USART1/2 directly."
#endif
#if !defined(USBCON) || !defined(USBD_USE_CDC)
  #error "Select Tools > USB support > CDC (generic 'Serial' supersede U(S)ART)"
#endif
#if defined(DISABLE_GENERIC_SERIALUSB)
  #error "Select USB CDC with generic Serial enabled."
#endif
#if !defined(NDEBUG)
  #error "Select Debug symbols and core logs > Symbols Enabled (-g), not Core Logs."
#endif
#if !defined(BL_HID)
  #error "Select Tools > Upload method > HID Bootloader 2.2 so the application is linked at 0x08000800."
#endif

#define LOG_PORT Serial

static inline void enableCycleCounter()
{
  CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
  DWT->CYCCNT = 0;
  DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

// ---------------- optional v8 baud detector ----------------
#if SNIFFER_AUTOBAUD

static const uint8_t EDGE_SAMPLES = 96;
volatile uint32_t masterDelta[EDGE_SAMPLES];
volatile uint32_t slaveDelta[EDGE_SAMPLES];
volatile uint8_t masterDeltaCount = 0;
volatile uint8_t slaveDeltaCount  = 0;
volatile uint32_t masterLastCycle = 0;
volatile uint32_t slaveLastCycle  = 0;

static const uint32_t baudTable[] = {2400, 4800, 9600, 19200, 38400, 57600, 115200, 230400, 460800};
static const uint8_t BAUD_COUNT = sizeof(baudTable) / sizeof(baudTable[0]);

void masterEdgeISR()
{
  const uint32_t now = DWT->CYCCNT;
  const uint32_t last = masterLastCycle;
  masterLastCycle = now;
  if (last && masterDeltaCount < EDGE_SAMPLES) {
    const uint32_t d = now - last;
    if (d >= 50) masterDelta[masterDeltaCount++] = d;
  }
}

void slaveEdgeISR()
{
  const uint32_t now = DWT->CYCCNT;
  const uint32_t last = slaveLastCycle;
  slaveLastCycle = now;
  if (last && slaveDeltaCount < EDGE_SAMPLES) {
    const uint32_t d = now - last;
    if (d >= 50) slaveDelta[slaveDeltaCount++] = d;
  }
}

static void scoreSet(const volatile uint32_t *samples, uint8_t count, uint32_t baud,
                     uint16_t &fit, uint16_t &oneBit, uint16_t &used, uint32_t &errorSum)
{
  const uint32_t cpb = (SystemCoreClock + baud / 2UL) / baud;
  for (uint8_t i = 0; i < count; ++i) {
    const uint32_t d = samples[i];
    const uint32_t bits = (d + cpb / 2UL) / cpb;
    if (bits < 1UL || bits > 20UL) continue;
    ++used;
    const uint32_t expected = cpb * bits;
    const uint32_t diff = (d > expected) ? (d - expected) : (expected - d);
    const uint32_t err = (diff * 1000UL + expected / 2UL) / expected;
    if (err <= 150UL) {
      ++fit;
      errorSum += err;
      if (bits == 1UL) ++oneBit;
    }
  }
}

static BaudGuess guessBaud(const volatile uint32_t *a, uint8_t countA,
                           const volatile uint32_t *b, uint8_t countB)
{
  BaudGuess best = {0, 0, 0, 0, 65535, 0};
  for (uint8_t k = 0; k < BAUD_COUNT; ++k) {
    uint16_t fit = 0, oneBit = 0, used = 0;
    uint32_t errorSum = 0;
    const uint32_t baud = baudTable[k];
    if (a && countA) scoreSet(a, countA, baud, fit, oneBit, used, errorSum);
    if (b && countB) scoreSet(b, countB, baud, fit, oneBit, used, errorSum);
    if (!used) continue;
    const uint32_t score = (uint32_t)fit * 10UL + (uint32_t)oneBit * 40UL;
    const uint16_t meanErr = fit ? (uint16_t)(errorSum / fit) : 65535;
    if (score > best.score || (score == best.score && meanErr < best.meanErrorPermille))
      best = {baud, fit, oneBit, used, meanErr, score};
  }
  return best;
}

static void printGuess(char tag, const BaudGuess &g)
{
  LOG_PORT.write(tag);
  LOG_PORT.write(' ');
  if (!g.baud || !g.usedCount) { LOG_PORT.println("none"); return; }
  LOG_PORT.print(g.baud);
  LOG_PORT.print(" fit=");
  LOG_PORT.print((100UL * g.fitCount) / g.usedCount);
  LOG_PORT.print("% one=");
  LOG_PORT.print(g.oneBitCount);
  LOG_PORT.print(" err=");
  LOG_PORT.print(g.meanErrorPermille / 10U);
  LOG_PORT.write('.');
  LOG_PORT.print(g.meanErrorPermille % 10U);
  LOG_PORT.println('%');
}
#endif  // SNIFFER_AUTOBAUD

// ---------------- raw USART1 / USART2 RX with per-byte time stamps ----------------

static const uint8_t RING_MASK = 255;   // 256-byte rings; uint8_t indices wrap for free

volatile uint8_t  masterRx[256];
volatile uint32_t masterTs[256];
volatile uint8_t  slaveRx[256];
volatile uint32_t slaveTs[256];
volatile uint8_t masterHead = 0, masterTail = 0;
volatile uint8_t slaveHead  = 0, slaveTail  = 0;
volatile uint16_t masterDropped = 0, slaveDropped = 0;
volatile uint16_t masterFE = 0, masterNE = 0, masterORE = 0;
volatile uint16_t slaveFE  = 0, slaveNE  = 0, slaveORE  = 0;

static inline void ringPush(volatile uint8_t *buf, volatile uint32_t *ts,
                            volatile uint8_t &head, volatile uint8_t &tail,
                            volatile uint16_t &dropped, uint8_t v, uint32_t stamp)
{
  const uint8_t next = (uint8_t)((head + 1U) & RING_MASK);
  if (next == tail) { ++dropped; return; }
  buf[head] = v;
  ts[head] = stamp;
  head = next;
}

extern "C" void USART1_IRQHandler(void)
{
  const uint32_t stamp = DWT->CYCCNT;
  const uint32_t sr = USART1->SR;
  if (sr & (USART_SR_RXNE | USART_SR_ORE | USART_SR_NE | USART_SR_FE)) {
    const uint8_t v = (uint8_t)USART1->DR;   // reading DR clears the error flags
    if (sr & USART_SR_FE)  ++masterFE;
    if (sr & USART_SR_NE)  ++masterNE;
    if (sr & USART_SR_ORE) ++masterORE;
    if (sr & USART_SR_RXNE)
      ringPush(masterRx, masterTs, masterHead, masterTail, masterDropped, v, stamp);
  }
}

extern "C" void USART2_IRQHandler(void)
{
  const uint32_t stamp = DWT->CYCCNT;
  const uint32_t sr = USART2->SR;
  if (sr & (USART_SR_RXNE | USART_SR_ORE | USART_SR_NE | USART_SR_FE)) {
    const uint8_t v = (uint8_t)USART2->DR;
    if (sr & USART_SR_FE)  ++slaveFE;
    if (sr & USART_SR_NE)  ++slaveNE;
    if (sr & USART_SR_ORE) ++slaveORE;
    if (sr & USART_SR_RXNE)
      ringPush(slaveRx, slaveTs, slaveHead, slaveTail, slaveDropped, v, stamp);
  }
}

static void rawUartsBegin(uint32_t baud)
{
  RCC->APB2ENR |= RCC_APB2ENR_IOPAEN | RCC_APB2ENR_USART1EN;
  RCC->APB1ENR |= RCC_APB1ENR_USART2EN;

  // PA10 and PA3: input floating (MODE=00, CNF=01 => nibble 0x4)
  GPIOA->CRH = (GPIOA->CRH & ~(0xFUL << 8))  | (0x4UL << 8);   // PA10
  GPIOA->CRL = (GPIOA->CRL & ~(0xFUL << 12)) | (0x4UL << 12);  // PA3

  USART1->CR1 = 0; USART1->CR2 = 0; USART1->CR3 = 0;
  USART2->CR1 = 0; USART2->CR2 = 0; USART2->CR3 = 0;

  // Blue Pill at 72 MHz: PCLK2 = 72 MHz (USART1), PCLK1 = 36 MHz (USART2).
  USART1->BRR = (72000000UL + baud / 2UL) / baud;
  USART2->BRR = (36000000UL + baud / 2UL) / baud;

  (void)USART1->SR; (void)USART1->DR;
  (void)USART2->SR; (void)USART2->DR;

  NVIC_ClearPendingIRQ(USART1_IRQn);
  NVIC_ClearPendingIRQ(USART2_IRQn);
  NVIC_SetPriority(USART1_IRQn, 0);   // highest: the stamp must be taken promptly
  NVIC_SetPriority(USART2_IRQn, 0);
  NVIC_EnableIRQ(USART1_IRQn);
  NVIC_EnableIRQ(USART2_IRQn);

  USART1->CR1 = USART_CR1_RE | USART_CR1_RXNEIE | USART_CR1_UE;
  USART2->CR1 = USART_CR1_RE | USART_CR1_RXNEIE | USART_CR1_UE;
}

// ---------------- frame assembly and logging ----------------

CaptureFrame masterFrame = {{0}, 0, 0, 0, 0};
CaptureFrame slaveFrame  = {{0}, 0, 0, 0, 0};

static uint32_t activeBaud = 0;
static uint32_t frameGapCyc = 0;
static UsClock usClock;

static void printHex(uint8_t v)
{
  static const char hex[] = "0123456789ABCDEF";
  LOG_PORT.write(hex[v >> 4]);
  LOG_PORT.write(hex[v & 15]);
}

// Line format: time_us dir len crc fn hex...
//   crc is OK or BAD (CRC-16/MODBUS over the whole frame); fn is the second
//   byte (the Modbus function code, with 0x80 set on an exception reply).
//   A trailing "+" on len means bytes beyond 128 were dropped.
static void flushFrame(CaptureFrame &f, char direction)
{
  if (!f.len) return;

  LOG_PORT.print(usClock.stampToUs(f.firstCyc));
  LOG_PORT.write(' ');
  LOG_PORT.write(direction);
  LOG_PORT.write(' ');
  LOG_PORT.print(f.len);
  if (f.over) LOG_PORT.write('+');
  LOG_PORT.write(' ');
  LOG_PORT.print((!f.over && modbusFrameOk(f.data, f.len)) ? "OK" : "BAD");
  LOG_PORT.write(' ');
  if (f.len >= 2) printHex(f.data[1]); else LOG_PORT.write('-');
  for (uint8_t i = 0; i < f.len; ++i) {
    LOG_PORT.write(' ');
    printHex(f.data[i]);
  }
  LOG_PORT.println();
  f.len = 0;
  f.over = 0;
}

static void addByte(CaptureFrame &f, uint8_t v, uint32_t stamp, char direction)
{
  if (f.len && (uint32_t)(stamp - f.lastCyc) > frameGapCyc)
    flushFrame(f, direction);

  if (!f.len) f.firstCyc = stamp;

  if (f.len < sizeof(f.data)) f.data[f.len++] = v;
  else f.over = 1;
  f.lastCyc = stamp;
}

static void flushIfIdle(CaptureFrame &f, char direction, uint32_t nowCyc)
{
  if (f.len && (uint32_t)(nowCyc - f.lastCyc) > frameGapCyc)
    flushFrame(f, direction);
}

static void reportErrors()
{
  static uint16_t last[8];
  noInterrupts();
  const uint16_t cur[8] = {masterDropped, masterFE, masterNE, masterORE,
                           slaveDropped,  slaveFE,  slaveNE,  slaveORE};
  interrupts();
  bool changed = false;
  for (uint8_t i = 0; i < 8; ++i) if (cur[i] != last[i]) changed = true;
  if (!changed) return;
  for (uint8_t i = 0; i < 8; ++i) last[i] = cur[i];
  LOG_PORT.print("# err M drop="); LOG_PORT.print(cur[0]);
  LOG_PORT.print(" fe=");          LOG_PORT.print(cur[1]);
  LOG_PORT.print(" ne=");          LOG_PORT.print(cur[2]);
  LOG_PORT.print(" ore=");         LOG_PORT.print(cur[3]);
  LOG_PORT.print(" | S drop=");    LOG_PORT.print(cur[4]);
  LOG_PORT.print(" fe=");          LOG_PORT.print(cur[5]);
  LOG_PORT.print(" ne=");          LOG_PORT.print(cur[6]);
  LOG_PORT.print(" ore=");         LOG_PORT.println(cur[7]);
}

static void serviceSniffer()
{
  const uint32_t nowCyc = DWT->CYCCNT;
  usClock.advance(nowCyc);

  while (masterHead != masterTail) {
    const uint8_t t = masterTail;
    const uint8_t v = masterRx[t];
    const uint32_t s = masterTs[t];
    masterTail = (uint8_t)((t + 1U) & RING_MASK);
    addByte(masterFrame, v, s, 'M');
  }
  while (slaveHead != slaveTail) {
    const uint8_t t = slaveTail;
    const uint8_t v = slaveRx[t];
    const uint32_t s = slaveTs[t];
    slaveTail = (uint8_t)((t + 1U) & RING_MASK);
    addByte(slaveFrame, v, s, 'S');
  }

  flushIfIdle(masterFrame, 'M', nowCyc);
  flushIfIdle(slaveFrame,  'S', nowCyc);

  static uint32_t lastReportMs = 0;
  const uint32_t ms = millis();
  if ((uint32_t)(ms - lastReportMs) >= 2000UL) {
    lastReportMs = ms;
    reportErrors();
  }
}

void setup()
{
  LOG_PORT.begin(115200);
  while (!LOG_PORT) delay(10);   // wait for the PC to open the COM port

  LOG_PORT.println("G5 sniffer v9 C6/HID");

  pinMode(MASTER_RX_PIN, INPUT);
  pinMode(SLAVE_RX_PIN, INPUT);
  enableCycleCounter();

#if SNIFFER_AUTOBAUD
  attachInterrupt(digitalPinToInterrupt(MASTER_RX_PIN), masterEdgeISR, CHANGE);
  attachInterrupt(digitalPinToInterrupt(SLAVE_RX_PIN),  slaveEdgeISR,  CHANGE);
  const uint32_t start = millis();
  while ((millis() - start) < 5000UL) {
    if (masterDeltaCount >= 64 && slaveDeltaCount >= 64) break;
  }
  noInterrupts();
  detachInterrupt(digitalPinToInterrupt(MASTER_RX_PIN));
  detachInterrupt(digitalPinToInterrupt(SLAVE_RX_PIN));
  interrupts();

  const uint8_t mc = masterDeltaCount;
  const uint8_t sc = slaveDeltaCount;
  LOG_PORT.print("edges M="); LOG_PORT.print(mc);
  LOG_PORT.print(" S=");      LOG_PORT.println(sc);
  printGuess('M', guessBaud(masterDelta, mc, nullptr, 0));
  printGuess('S', guessBaud(slaveDelta, sc, nullptr, 0));
  const BaudGuess gc = guessBaud(masterDelta, mc, slaveDelta, sc);
  printGuess('C', gc);
  activeBaud = gc.baud;
  if (!activeBaud) { LOG_PORT.println("no baud; reset"); return; }
#else
  activeBaud = FIXED_BAUD;
#endif

  frameGapCyc = gapCycles(SystemCoreClock, activeBaud, FRAME_GAP_X10);
  usClock.begin(DWT->CYCCNT, SystemCoreClock / 1000000UL);

  LOG_PORT.print("RX ");
  LOG_PORT.print(activeBaud);
  LOG_PORT.println(" 8N1");
  LOG_PORT.println("time_us dir len crc fn hex");

  rawUartsBegin(activeBaud);
}

void loop()
{
  if (activeBaud) serviceSniffer();
}
