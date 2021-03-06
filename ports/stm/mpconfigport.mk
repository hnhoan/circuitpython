MPY_TOOL_LONGINT_IMPL = -mlongint-impl=mpz
LONGINT_IMPL = MPZ
INTERNAL_LIBM = 1
USB_SERIAL_NUMBER_LENGTH = 24

ifeq ($(MCU_VARIANT),STM32F405xx)
	CIRCUITPY_FRAMEBUFFERIO = 1
	CIRCUITPY_RGBMATRIX = 1
endif

ifeq ($(MCU_SERIES),F4)
	# Not yet implemented common-hal modules:
	CIRCUITPY_AUDIOBUSIO = 0
	CIRCUITPY_AUDIOIO = 0
	CIRCUITPY_ROTARYIO = 0
	CIRCUITPY_COUNTIO = 0
	CIRCUITPY_RTC = 0
	CIRCUITPY_FREQUENCYIO = 0
	CIRCUITPY_I2CSLAVE = 0
	# Can be overridden on board level
	ifndef CIRCUITPY_NVM
		CIRCUITPY_NVM = 0
	endif
endif

ifeq ($(MCU_SERIES),H7)
	# Not yet implemented common-hal modules:
	CIRCUITPY_ANALOGIO = 0
	CIRCUITPY_NEOPIXEL_WRITE = 0
	CIRCUITPY_PULSEIO = 0
	CIRCUITPY_NVM = 0
	CIRCUITPY_AUDIOBUSIO = 0
	CIRCUITPY_AUDIOIO = 0
	CIRCUITPY_COUNTIO = 0
	CIRCUITPY_ROTARYIO = 0
	CIRCUITPY_RTC = 0
	CIRCUITPY_FREQUENCYIO = 0
	CIRCUITPY_I2CSLAVE = 0
endif

ifeq ($(MCU_SERIES),F7)
	# Not yet implemented common-hal modules:
	CIRCUITPY_ANALOGIO = 0
	CIRCUITPY_NEOPIXEL_WRITE = 0
	CIRCUITPY_NVM = 0
	CIRCUITPY_AUDIOBUSIO = 0
	CIRCUITPY_AUDIOIO = 0
	CIRCUITPY_ROTARYIO = 0
	CIRCUITPY_COUNTIO = 0
	CIRCUITPY_RTC = 0
	CIRCUITPY_FREQUENCYIO = 0
	CIRCUITPY_I2CSLAVE = 0
endif
