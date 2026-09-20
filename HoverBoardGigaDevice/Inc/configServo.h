#ifndef CONFIG_SERVO_H
#define CONFIG_SERVO_H

/*
 * ServoFOC application configuration.
 *
 * R0 intentionally keeps the proven upstream BLDC_SINE motor backend. The
 * servo build is selected with APPLICATION_SERVO plus exactly one physical
 * board variant:
 *
 *   SERVO_HW_MASTER
 *   SERVO_HW_SLAVE
 *
 * MASTER/SLAVE here describe PCB hardware variants only. Both builds run as
 * independent SINGLE controllers and do not use the Gen2.x master/slave motor
 * command relationship.
 */

#ifndef GD32F130
	#error "R0 ServoFOC currently supports the GD32F130 target only"
#endif

#if defined(SERVO_HW_MASTER) && defined(SERVO_HW_SLAVE)
	#error "Select only one ServoFOC hardware variant"
#elif !defined(SERVO_HW_MASTER) && !defined(SERVO_HW_SLAVE)
	#error "ServoFOC requires SERVO_HW_MASTER or SERVO_HW_SLAVE"
#endif

/* Gyroor G5 / OLSZ OL20180703-V4.1 family, Gen2.x layout 2.1.20. */
#define LAYOUT 20

/* R0 uses the existing motor backend. FOC [field-oriented control] comes later. */
#define BLDC_SINE
#define DRIVING_MODE 0

#define BAT_CELLS 10
#define CELL_LOW_LVL1 3.5
#define CELL_LOW_LVL2 3.3
#define CELL_LOW_DEAD 3.0
#define DC_CUR_LIMIT 15

/* Every ServoFOC board is logically independent. */
#define SINGLE
#define MASTER_OR_SINGLE

/*
 * The former master/slave PA2/PA3 UART [universal asynchronous receiver-
 * transmitter] is the reserved supervisory servo link.
 * R0.1 is a passive bring-up image and accepts no motion commands.
 */
#define REMOTE_SERVO
#define REMOTE_USART 1
#define SERVO_BRINGUP_PASSIVE

/* Mirror the three assumed Hall inputs on the three status LEDs. */
#define TEST_HALL2LED

/* Required by the upstream default pilot path used during R0. */
#define SPEED_COEFFICIENT -1
#define STEER_COEFFICIENT 1

/*
 * Upstream explicitly notes DISABLE_BUTTON for using slave hardware as an
 * independent/master-like controller. This also suppresses SELF_HOLD until
 * the MASTER/SLAVE hardware differences are explicitly documented.
 */
#ifdef SERVO_HW_SLAVE
	#define DISABLE_BUTTON
#endif

#endif /* CONFIG_SERVO_H */
