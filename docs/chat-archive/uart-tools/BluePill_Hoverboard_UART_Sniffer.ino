/*
  BluePill_Hoverboard_UART_Sniffer.ino

  Passive dual-UART sniffer / baud detector for the stock hoverboard
  master <-> slave link.

  Target: STM32F103C8 "Blue Pill"
  Framework: STM32duino / STMicroelectronics Arduino_Core_STM32

  PASSIVE connections:
    Hoverboard MASTER PA2 TX  -> Blue Pill PA10 (USART1 RX)
    Hoverboard SLAVE  PA2 TX  -> Blue Pill PA3  (USART2 RX)
    Hoverboard GND             -> Blue Pill GND

  Do NOT connect Blue Pill PA9 or PA2 to the hoverboard yet.
  Do NOT tie the hoverboard 3.3 V rail to the Blue Pill 3.3 V rail.
  Power the Blue Pill from USB for this first test.

  Native USB CDC uses PA11/PA12 for logging to the PC.
*/

#include <Arduino.h>
#include <math.h>

static const PinName MASTER_RX_PIN = PA10;
static const PinName SLAVE_RX_PIN  = PA3;

#define LOG_PORT Serial

static const uint16_t EDGE_SAMPLES = 256;

volatile uint32_t masterDelta[EDGE_SAMPLES];
volatile uint32_t slaveDelta[EDGE_SAMPLES];
volatile uint16_t masterDeltaCount = 0;
volatile uint16_t slaveDeltaCount  = 0;
volatile uint32_t masterLastCycle = 0;
volatile uint32_t slaveLastCycle  = 0;

static const uint32_t baudTable[] = {
  1200, 2400, 4800, 9600, 19200, 38400,
  57600, 115200, 230400, 460800, 921600
};
static const size_t BAUD_COUNT = sizeof(baudTable) / sizeof(baudTable[0]);

struct BaudGuess {
  uint32_t baud;
  uint16_t fitCount;
  uint16_t oneBitCount;
  uint16_t usedCount;
  float meanErrorPercent;
  uint32_t score;
};

static inline void enableCycleCounter()
{
  CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
  DWT->CYCCNT = 0;
  DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

void masterEdgeISR()
{
  const uint32_t now = DWT->CYCCNT;
  const uint32_t last = masterLastCycle;
  masterLastCycle = now;

  if (last != 0 && masterDeltaCount < EDGE_SAMPLES) {
    const uint32_t d = now - last;
    if (d >= 50) masterDelta[masterDeltaCount++] = d;
  }
}

void slaveEdgeISR()
{
  const uint32_t now = DWT->CYCCNT;
  const uint32_t last = slaveLastCycle;
  slaveLastCycle = now;

  if (last != 0 && slaveDeltaCount < EDGE_SAMPLES) {
    const uint32_t d = now - last;
    if (d >= 50) slaveDelta[slaveDeltaCount++] = d;
  }
}

static void scoreOneSet(
  const volatile uint32_t *samples,
  uint16_t count,
  uint32_t baud,
  uint16_t &fit,
  uint16_t &oneBit,
  uint16_t &used,
  float &errorSum)
{
  const float cyclesPerBit = (float)SystemCoreClock / (float)baud;

  for (uint16_t i = 0; i < count; i++) {
    const float delta = (float)samples[i];
    const float bitEstimate = delta / cyclesPerBit;
    const int bits = (int)(bitEstimate + 0.5f);

    if (bits < 1 || bits > 20) continue;

    used++;

    const float expected = cyclesPerBit * (float)bits;
    const float err = fabsf(delta - expected) / expected;

    if (err <= 0.15f) {
      fit++;
      errorSum += err;
      if (bits == 1) oneBit++;
    }
  }
}

static BaudGuess guessBaud(
  const volatile uint32_t *a, uint16_t countA,
  const volatile uint32_t *b, uint16_t countB)
{
  BaudGuess best = {0, 0, 0, 0, 999.0f, 0};

  for (size_t k = 0; k < BAUD_COUNT; k++) {
    const uint32_t baud = baudTable[k];
    uint16_t fit = 0, oneBit = 0, used = 0;
    float errorSum = 0.0f;

    if (a && countA) scoreOneSet(a, countA, baud, fit, oneBit, used, errorSum);
    if (b && countB) scoreOneSet(b, countB, baud, fit, oneBit, used, errorSum);

    if (used == 0) continue;

    // Higher harmonic baud rates can also match integer edge spacing.
    // Strongly reward actual one-bit intervals.
    const uint32_t score = (uint32_t)fit * 10UL + (uint32_t)oneBit * 40UL;
    const float meanErr = fit ? (errorSum * 100.0f / (float)fit) : 999.0f;

    if (score > best.score || (score == best.score && meanErr < best.meanErrorPercent)) {
      best.baud = baud;
      best.fitCount = fit;
      best.oneBitCount = oneBit;
      best.usedCount = used;
      best.meanErrorPercent = meanErr;
      best.score = score;
    }
  }

  return best;
}

static void printGuess(const char *name, const BaudGuess &g)
{
  LOG_PORT.print(name);
  LOG_PORT.print(": ");

  if (g.baud == 0 || g.usedCount == 0) {
    LOG_PORT.println("insufficient transitions");
    return;
  }

  LOG_PORT.print(g.baud);
  LOG_PORT.print(" baud, edge fit ");
  LOG_PORT.print((100UL * g.fitCount) / g.usedCount);
  LOG_PORT.print("%, one-bit matches ");
  LOG_PORT.print(g.oneBitCount);
  LOG_PORT.print(", mean matched-edge error ");
  LOG_PORT.print(g.meanErrorPercent, 2);
  LOG_PORT.println("%");
}

static const uint16_t FRAME_BUFFER_SIZE = 256;

struct CaptureFrame {
  uint8_t data[FRAME_BUFFER_SIZE];
  uint16_t len;
  uint32_t firstUs;
  uint32_t lastUs;
};

CaptureFrame masterFrame = {{0}, 0, 0, 0};
CaptureFrame slaveFrame  = {{0}, 0, 0, 0};

uint32_t activeBaud = 0;
uint32_t frameGapUs = 1000;

static void printHexByte(uint8_t v)
{
  static const char hex[] = "0123456789ABCDEF";
  LOG_PORT.write(hex[(v >> 4) & 0x0F]);
  LOG_PORT.write(hex[v & 0x0F]);
}

static void flushFrame(CaptureFrame &f, const char *direction)
{
  if (f.len == 0) return;

  LOG_PORT.print(f.firstUs);
  LOG_PORT.print(" us  ");
  LOG_PORT.print(direction);
  LOG_PORT.print("  [");
  LOG_PORT.print(f.len);
  LOG_PORT.print("]  ");

  for (uint16_t i = 0; i < f.len; i++) {
    printHexByte(f.data[i]);
    if (i + 1 < f.len) LOG_PORT.write(' ');
  }
  LOG_PORT.println();
  f.len = 0;
}

static void addByte(CaptureFrame &f, uint8_t v, const char *direction)
{
  const uint32_t now = micros();

  if (f.len && (uint32_t)(now - f.lastUs) > frameGapUs)
    flushFrame(f, direction);

  if (f.len == 0) f.firstUs = now;

  if (f.len >= FRAME_BUFFER_SIZE) {
    flushFrame(f, direction);
    f.firstUs = now;
  }

  f.data[f.len++] = v;
  f.lastUs = now;
}

static void serviceSniffer()
{
  while (Serial1.available() > 0)
    addByte(masterFrame, (uint8_t)Serial1.read(), "M>S");

  while (Serial2.available() > 0)
    addByte(slaveFrame, (uint8_t)Serial2.read(), "S>M");

  const uint32_t now = micros();

  if (masterFrame.len && (uint32_t)(now - masterFrame.lastUs) > frameGapUs)
    flushFrame(masterFrame, "M>S");

  if (slaveFrame.len && (uint32_t)(now - slaveFrame.lastUs) > frameGapUs)
    flushFrame(slaveFrame, "S>M");
}

void setup()
{
  LOG_PORT.begin(115200);

  const uint32_t usbStart = millis();
  while (!LOG_PORT && (millis() - usbStart) < 3000) {}

  LOG_PORT.println();
  LOG_PORT.println("Blue Pill stock-hoverboard dual UART sniffer");
  LOG_PORT.println("PASSIVE MODE: only PA10, PA3 and GND connect to hoverboard.");
  LOG_PORT.print("CPU clock: ");
  LOG_PORT.print(SystemCoreClock / 1000000UL);
  LOG_PORT.println(" MHz");
  LOG_PORT.println("Collecting edge timing for up to 5 seconds...");

  pinMode(MASTER_RX_PIN, INPUT);
  pinMode(SLAVE_RX_PIN, INPUT);

  enableCycleCounter();

  attachInterrupt(digitalPinToInterrupt(MASTER_RX_PIN), masterEdgeISR, CHANGE);
  attachInterrupt(digitalPinToInterrupt(SLAVE_RX_PIN), slaveEdgeISR, CHANGE);

  const uint32_t start = millis();
  while ((millis() - start) < 5000) {
    if (masterDeltaCount >= 180 && slaveDeltaCount >= 180) break;
  }

  noInterrupts();
  detachInterrupt(digitalPinToInterrupt(MASTER_RX_PIN));
  detachInterrupt(digitalPinToInterrupt(SLAVE_RX_PIN));
  interrupts();

  const uint16_t mc = masterDeltaCount;
  const uint16_t sc = slaveDeltaCount;

  LOG_PORT.print("Captured edge intervals: master TX=");
  LOG_PORT.print(mc);
  LOG_PORT.print(", slave TX=");
  LOG_PORT.println(sc);

  const BaudGuess gm = guessBaud(masterDelta, mc, nullptr, 0);
  const BaudGuess gs = guessBaud(slaveDelta, sc, nullptr, 0);
  const BaudGuess gc = guessBaud(masterDelta, mc, slaveDelta, sc);

  printGuess("Master TX candidate", gm);
  printGuess("Slave TX candidate ", gs);
  printGuess("Combined candidate ", gc);

  activeBaud = gc.baud;

  if (activeBaud == 0) {
    LOG_PORT.println("No usable baud candidate found; reset while stock boards are communicating.");
    return;
  }

  frameGapUs = (uint32_t)((50ULL * 1000000ULL) / activeBaud);
  if (frameGapUs < 100) frameGapUs = 100;

  LOG_PORT.println();
  LOG_PORT.print("Starting dual 8-N-1 decode at ");
  LOG_PORT.print(activeBaud);
  LOG_PORT.println(" baud.");
  LOG_PORT.print("Display burst gap: ");
  LOG_PORT.print(frameGapUs);
  LOG_PORT.println(" us");
  LOG_PORT.println("Format: timestamp  direction  [bytes]  hex data");
  LOG_PORT.println();

  // Blue Pill:
  // USART1 RX=PA10, TX=PA9
  // USART2 RX=PA3,  TX=PA2
  // TX pins stay physically UNCONNECTED during passive sniffing.
  Serial1.begin(activeBaud, SERIAL_8N1);
  Serial2.begin(activeBaud, SERIAL_8N1);
}

void loop()
{
  if (activeBaud != 0) serviceSniffer();
}
