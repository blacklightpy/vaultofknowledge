Electronic Speed Controllers (ESCs) are used to control brushless DC motors due to their need for modulated control. The basic protocol used to communicate to an ESC is [[Pulse Width Modulation]] (PWM).

An ESC converts the PWM signals to three phase AC supply to control the BLDC motors.

Aside from PWM, there are other analog and digital protocols to communicate with ESCs, which came about as technology emerged.

## Analog Protocols

> [!NOTE]
> Analog protocols need signal calibration.

- Analog PWM
	- Pulse LOW = STOP and HIGH = FULL POWER
- Standard PWM
	- Pulse length of 1 ms = STOP and 2 ms = FULL POWER. So maximum signal frequency is 500 Hz.
- OneShot125
	- Pulse length is 8 times shorter than PWM, meaning the short pulse is 125 µs.
	- Pulse length of 125 µs = STOP and 250 µs = FULL POWER. So maximum signal frequency is 4 kHz.
- OneShot42
	- Short pulse of 42µs. Frequency is 12 kHz.
- Multishot
	- Frequency of 32 kHz.
## Digital Protocols

> [!NOTE]
> Digital protocols implement error correction, and hence don't need to be calibrated.
- ### DShot (Digital Shot)
	- It has 16 bits per signal. 11 bits for throttle value, 1 bit for telemetry and 4 bits for cyclic redundancy check (CRC) checksum.
	- DShot150 - 150 Kbps
	- DShot300 - 300 Kbps
	- DShot600 - 600 Kbps
	- DShot1000 - 1000 Kbps
- ### ProShot
	- It is a hybrid of DShot and OneShot
	- It splits the 16 bits of DShot into 4 PWM pulses each containing 4 bits of data.
	- The length of the pulse determines the value of the 4 bits, and since there are less overall gaps between pulses compared to DShot, ProShot is faster.
	- It requires a filter capacitor to filter out the noise, since the signal width is higher.
	- ProShot1000 - 1000 Kbps