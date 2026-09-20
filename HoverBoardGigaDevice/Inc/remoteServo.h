#ifndef REMOTE_SERVO_H
#define REMOTE_SERVO_H

#include <stdint.h>

/*
 * R0.1 remains command-locked. The UART [universal asynchronous receiver-
 * transmitter] is reserved for the future versioned protocol, while this
 * bring-up snapshot can be watched through SWD [serial wire debug].
 */

#ifndef REMOTE_BAUD
	#define REMOTE_BAUD 115200
#endif

#define SERVO_PROTOCOL_VERSION_MAJOR 0
#define SERVO_PROTOCOL_VERSION_MINOR 0

#define SERVO_BRINGUP_MONITOR_MAGIC   0x53463031u /* "SF01" */
#define SERVO_BRINGUP_MONITOR_VERSION 1u

#define SERVO_ANALOG_VALID_VBATT   (1u << 0)
#define SERVO_ANALOG_VALID_PHASE_A (1u << 1)
#define SERVO_ANALOG_VALID_PHASE_B (1u << 2)
#define SERVO_ANALOG_VALID_PA6     (1u << 3)

typedef struct
{
	uint32_t magic;
	uint16_t version;
	uint16_t size_bytes;

	uint32_t uptime_ms;
	uint32_t pwm_irq_hz;
	uint32_t adc_irq_hz;
	uint32_t uart1_rx_bytes;

	uint16_t battery_adc_raw;
	uint16_t battery_mv;
	uint16_t phase_a_adc_raw;
	uint16_t phase_b_adc_raw;
	uint16_t pa6_adc_raw;
	uint8_t analog_valid_mask;

	uint8_t hall_raw;
	uint8_t hall_valid;
	uint8_t photo_l_raw;
	uint8_t photo_r_raw;
	uint8_t button_raw;
	uint8_t self_hold_raw;

	uint8_t imu_ok;
	uint8_t remote_timeout;
	uint8_t drive_enabled;
	uint8_t reserved0;
	uint16_t imu_error_count;

	int16_t accel_x;
	int16_t accel_y;
	int16_t accel_z;
	int16_t gyro_x;
	int16_t gyro_y;
	int16_t gyro_z;
	int16_t imu_temperature_raw;
} ServoBringupMonitor;

extern volatile ServoBringupMonitor gServoBringup;

#endif /* REMOTE_SERVO_H */
