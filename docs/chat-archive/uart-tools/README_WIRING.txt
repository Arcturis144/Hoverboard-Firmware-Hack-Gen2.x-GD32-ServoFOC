Blue Pill hoverboard UART sniffer - first test
==================================================

WIRING - PASSIVE ONLY
---------------------
Keep the original hoverboard master/slave harness connected.

Hoverboard MASTER PA2 TX  -> Blue Pill PA10
Hoverboard SLAVE  PA2 TX  -> Blue Pill PA3
Hoverboard GND             -> Blue Pill GND

Do NOT connect Blue Pill PA9 or PA2 to the hoverboard yet.
Do NOT tie the hoverboard 3.3 V rail to Blue Pill 3.3 V.

Power Blue Pill from USB.

ST-LINK PROGRAMMING
-------------------
ST-Link GND   -> Blue Pill GND
ST-Link SWDIO -> Blue Pill PA13 / SWDIO
ST-Link SWCLK -> Blue Pill PA14 / SWCLK

If Blue Pill is already USB-powered, leave ST-Link 3.3 V disconnected.

ARDUINO IDE
-----------
Install STMicroelectronics "STM32 MCU based boards".

Typical settings:
  Board group: Generic STM32F1 series
  Board part number: BluePill F103C8
  USB support: CDC (generic Serial supersede U(S)ART)
  Upload method: STM32CubeProgrammer (SWD)

The native USB CDC port uses PA11/PA12 and is used for logging.

TEST
----
1. Wire the three passive connections.
2. Flash the sketch through ST-Link.
3. Open the Blue Pill USB CDC COM port.
4. Power/start the stock hoverboard boards.
5. Reset the Blue Pill while the stock boards are communicating.
6. It measures edge timing for up to five seconds.
7. Save the complete terminal output.

It will report something like:
  Master TX candidate: 115200 baud ...
  Slave TX candidate : 115200 baud ...
  Combined candidate : 115200 baud ...

Then it groups decoded traffic:
  1253812 us  M>S  [12]  AA 55 78 ...
  1254364 us  S>M  [8]   AA 55 03 ...

FIRST USEFUL CAPTURE
--------------------
After decode starts:
  * leave both boards level/stationary;
  * tilt one half slowly;
  * rotate one wheel by hand;
  * reverse that wheel;
  * rotate the other wheel;
  * press/release the power button.

The decoder initially assumes 8 data bits, no parity, 1 stop bit.
The baud detector itself does not assume the baud rate.

The next stage is a transparent inline MITM using Blue Pill USART1 and USART2.
