// this file will not be updated to github :-)

//#define CONFIG_DEBUG	// so robo can work on configDebug.h

#ifdef APPLICATION_SERVO
	#include "../Inc/configServo.h"
#elif defined(CONFIG_DEBUG)
	#include "../Inc/configDebug.h"
#else
	#include "../Inc/config.h"
#endif
	
	
