Blue Pill G5 dual-UART sniffer v9
=================================
Hardware, wiring, Arduino STM32 core settings and HID-bootloader notes are the
same as v8 (see the v8 README). v9 only changes the firmware logic.

What is different
-----------------
* 115200 8N1 is fixed. The factory B firmware sets up USART1 that way, so the
  sniffer no longer needs traffic at power-up. Build with -DSNIFFER_AUTOBAUD=1
  (or edit the define at the top) to restore the v8 detector.
* Bytes are time-stamped inside the interrupt with the DWT cycle counter, so a
  stalled USB host cannot change frame boundaries or timing.
* A frame ends after 1.5 character times of silence (FRAME_GAP_X10 = 15).
* Each output line is verified with CRC-16/MODBUS and shows the function code.
* Line format:   time_us dir len crc fn hex...
    dir  M = line from PA10 (master TX), S = line from PA3 (slave TX)
    crc  OK or BAD; BAD also covers frames cut short by a gap or longer than 128
    fn   second byte of the frame (function code; 0x80 set = exception reply)
    time_us is a 32-bit microsecond count that wraps every 71.6 minutes;
            stock_link_parse.py unwraps it.
* Every 2 s, if anything changed, a line  "# err M drop=.. fe=.. ne=.. ore=.. | S ..."
  reports ring overflows and framing/noise/overrun errors per line.

Using it
--------
1. Wire as in v8 (grounds common, only the two TX lines, nothing else).
2. Open the COM port at any speed; save the text (Serial Monitor copy, or any
   terminal logger).
3. python3 stock_link_parse.py capture.txt   (see the script's --help)

Status
------
Untested on hardware and not compiled with the real STM32duino core. The PC
side (ModbusFrame.h helpers, parser) is tested by test_modbus_frame.cpp and
test_parse.py. If the build overflows the 30 KiB budget, drop the "# err"
report first, then shrink the capture buffers.
