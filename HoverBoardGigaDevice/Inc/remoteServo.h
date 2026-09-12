#ifndef REMOTE_SERVO_H
#define REMOTE_SERVO_H

/*
 * Supervisory link for the independent ServoFOC application.
 *
 * R0 only reserves the interface and UART.  No motion command protocol is
 * accepted yet; RemoteServo.c deliberately keeps the drive timed out.
 */

#ifndef REMOTE_BAUD
	#define REMOTE_BAUD 115200
#endif

#define SERVO_PROTOCOL_VERSION_MAJOR 0
#define SERVO_PROTOCOL_VERSION_MINOR 0

#endif /* REMOTE_SERVO_H */
