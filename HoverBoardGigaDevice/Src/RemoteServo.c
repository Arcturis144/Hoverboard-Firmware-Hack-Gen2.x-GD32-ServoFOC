#include "../Inc/defines.h"

#ifdef REMOTE_SERVO

/*
 * R0 safe placeholder for the future versioned servo command/telemetry link.
 *
 * The interface exists now so ServoFOC can have its own build configuration
 * without borrowing REMOTE_DUMMY or the legacy master/slave command path.
 * Until the real protocol is implemented, every update explicitly requests a
 * remote timeout and zeroes the legacy command variables used by the upstream
 * main loop.  This makes an R0 ServoFOC build non-commandable by design.
 */

extern int32_t speed;
extern int32_t steer;
extern uint8_t bRemoteTimeout;

void RemoteUpdate(void)
{
	speed = 0;
	steer = 0;
	bRemoteTimeout = 1;
}

void RemoteCallback(void)
{
	/* R0: incoming UART data is intentionally ignored. */
}

int16_t RemoteCalculate(int16_t pwmInput)
{
	return pwmInput;
}

#endif /* REMOTE_SERVO */
