#include "../Inc/defines.h"

#ifdef REMOTE_SERVO

#include "../Inc/bldc.h"
#include "../Inc/it.h"

#ifdef IMU_ENABLE
	#include "../Inc/mpu6050.h"
#endif

/*
 * R0.1 passive bring-up image.
 *
 * No motion-command protocol is accepted. Every update forces the requested
 * command to zero, asserts the remote timeout, and keeps the bridge disabled.
 */

extern int32_t speed;
extern int32_t steer;
extern uint8_t bRemoteTimeout;

extern adc_buf_t adc_buffer;
extern float batteryVoltage;
extern FlagStatus bldc_enable;

extern uint32_t iPwmRate;
extern uint32_t iAdcRate;
extern uint32_t iCounter2Usart1;

#ifdef IMU_ENABLE
	extern ErrStatus mpuStatus;
	extern MPU_Data mpuData;
#endif

volatile ServoBringupMonitor gServoBringup = {
	.magic = SERVO_BRINGUP_MONITOR_MAGIC,
	.version = SERVO_BRINGUP_MONITOR_VERSION,
	.size_bytes = sizeof(ServoBringupMonitor),
	.phase_a_adc_raw = 0xFFFFu,
	.phase_b_adc_raw = 0xFFFFu,
	.pa6_adc_raw = 0xFFFFu,
	.button_raw = 0xFFu,
	.self_hold_raw = 0xFFu
};

static void ServoBringupUpdateMonitor(void)
{
	const uint32_t now = millis();
	const uint8_t hallRaw = ReadHallState();

	gServoBringup.magic = SERVO_BRINGUP_MONITOR_MAGIC;
	gServoBringup.version = SERVO_BRINGUP_MONITOR_VERSION;
	gServoBringup.size_bytes = sizeof(ServoBringupMonitor);

	gServoBringup.uptime_ms = now;
	gServoBringup.pwm_irq_hz = iPwmRate;
	gServoBringup.adc_irq_hz = iAdcRate;
	gServoBringup.uart1_rx_bytes = iCounter2Usart1;

	gServoBringup.battery_adc_raw = adc_buffer.v_batt;
	if (batteryVoltage > 0.0f && batteryVoltage < 65.535f)
		gServoBringup.battery_mv = (uint16_t)(batteryVoltage * 1000.0f + 0.5f);
	else
		gServoBringup.battery_mv = 0u;

	/*
	 * R0.1 does not claim the two phase-current channels or PA6. Those move
	 * into the deterministic ADC [analog-to-digital converter] scan in R1.
	 */
	gServoBringup.phase_a_adc_raw = 0xFFFFu;
	gServoBringup.phase_b_adc_raw = 0xFFFFu;
	gServoBringup.pa6_adc_raw = 0xFFFFu;
	gServoBringup.analog_valid_mask = SERVO_ANALOG_VALID_VBATT;

	gServoBringup.hall_raw = hallRaw;
	gServoBringup.hall_valid = (hallRaw > 0u && hallRaw < 7u) ? 1u : 0u;

#ifdef PHOTO_L
	gServoBringup.photo_l_raw = (uint8_t)digitalRead(PHOTO_L);
#else
	gServoBringup.photo_l_raw = 0xFFu;
#endif

#ifdef PHOTO_R
	gServoBringup.photo_r_raw = (uint8_t)digitalRead(PHOTO_R);
#else
	gServoBringup.photo_r_raw = 0xFFu;
#endif

#ifdef BUTTON
	gServoBringup.button_raw = (uint8_t)digitalRead(BUTTON);
#else
	gServoBringup.button_raw = 0xFFu;
#endif

#ifdef SELF_HOLD
	gServoBringup.self_hold_raw = (uint8_t)digitalRead(SELF_HOLD);
#else
	gServoBringup.self_hold_raw = 0xFFu;
#endif

	gServoBringup.remote_timeout = bRemoteTimeout;
	gServoBringup.drive_enabled = (uint8_t)bldc_enable;

#ifdef IMU_ENABLE
	static uint32_t nextImuReadMs = 0u;
	if (now >= nextImuReadMs)
	{
		nextImuReadMs = now + 50u;
		if (MPU_ReadAll() == SUCCESS)
		{
			gServoBringup.imu_ok = 1u;
			gServoBringup.accel_x = mpuData.accel.x;
			gServoBringup.accel_y = mpuData.accel.y;
			gServoBringup.accel_z = mpuData.accel.z;
			gServoBringup.gyro_x = mpuData.gyro.x;
			gServoBringup.gyro_y = mpuData.gyro.y;
			gServoBringup.gyro_z = mpuData.gyro.z;
			gServoBringup.imu_temperature_raw = mpuData.temperature;
		}
		else
		{
			gServoBringup.imu_ok = 0u;
			if (gServoBringup.imu_error_count != 0xFFFFu)
				gServoBringup.imu_error_count++;
		}
	}
#else
	gServoBringup.imu_ok = 0u;
#endif
}

void RemoteUpdate(void)
{
	speed = 0;
	steer = 0;
	bRemoteTimeout = 1;
	SetBldcInput(0);
	SetEnable(RESET);

	ServoBringupUpdateMonitor();
}

void RemoteCallback(void)
{
	/* R0.1: incoming UART data is intentionally ignored. */
}

int16_t RemoteCalculate(int16_t pwmInput)
{
	(void)pwmInput;
	return 0;
}

#endif /* REMOTE_SERVO */
