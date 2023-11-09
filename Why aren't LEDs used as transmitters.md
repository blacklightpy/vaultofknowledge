6G is entering the THz range.

But 4THz is the beginning of visible spectrum!

We have IR LEDs, IR sensors, Visible LEDs and Visible Cameras.
What does 6G, or 7G mean for these?

My guess is that LEDs are diffuse radiators with a mix of frequencies, and hence they are not ideal for modulation.
And I would guess IR LEDs are used as remote controllers by intensity modulation within a pretty large margin of error.
How many controls do we realistically expect a TV to have anyways? This would also explain why remotes go out of range very quickly (aside from the fact that IR light is easily susceptible to obstruction).

Also, well, Li-Fi is a thing. And, Morse code using light, is nothing but flickering it completely on and off, like 1s and 0s. We can do a lot better than that using varying intensities, even in a way that human's can't recognize.

Ahh, here I see the problem of using cameras. They just measure the intensity of light to a good approximation for optical vision. They struggle at differentiating different levels of lightness, especially visible in low light conditions. So we don't have the transceiver technology for light that is modulated in any other way than by the intensity. This is also why AM is easier than FM and it is less prone to obstructions than FM, but is more prone to interference than FM.

This is partly because AM uses longer wavelengths and omnidirectional antennas, while FM antennas are usually directional and has shorter wavelengths. To account for good bandwidth, FM uses UHF or VHF bands to have many frequency channels, while AM uses SW, MW or LW bands.

But, the range is only affected by the frequency of the carrier wave, not the modulation used. It's just that the higher the frequency, more the possible bandwidth of the modulated signal. Now, for a given bandwidth, the data rate depends on the specific modulation used (such as FSK, QPSK, etc.). That is a part of digital communications and signal processing. After all, all digital signals are analog signals in the first place, just cut off periodically. 

Fun fact: LEDs are used as transmitters and detectors too. This was invented by Forrest Mimms.



# Terms
- Passband: The frequency range that can pass through a bandpass filter.
- Bandpass Filter: A filter that only allows bands in a given range to pass. It usually has two band-stop filters. The response of a bandpass filter would include the bandpass signal and the stopband filter outputs on either sides.
	- Bandpass is different from passband, because of the ways of English, where the adjective goes first. We are highlighting the "pass" here, while there we are highlighting the "band".
- Band-stop Filter: A filter that attenuates frequencies of a given range, usually used in a bandpass filter. It has two non-zero and non-infinite corner frequencies. The required attenuation maybe 20-120 dB higher than the passband attenuation, which is often 0 dB.
- Stopband: The frequency range that is stopped by a band-stop filter.
	- Typically, the width of the stopband is 1 or 2 decades away.
		- A decade is a frequency interval of ten times, like an octave, which is twice the original frequency. This is measures frequency levels, unlike decibel, another [[logarithmic scale]] unit which measures amplitudes.
		- The steepness of the [[World Building/Science and Engineering/Mathematics/Applied Mathematics/Control Theory/Transfer Function|transfer function]] with frequency of a filter is called the roll-off.
		- The roll off of a filter is usually 20 dB/decade, because by theory, every frequency attenuated by x times will have a strength drop of 20log(X) dB. It is also equal to 6db/octave.
- Bandpass signal: The filtered signal after passing through a bandpass filter.
- Lowpass Filter: A filter than only allows bands below a cut-off frequency to pass.
- Lowpass signal: The filtered signal after passing through a lowpass filter.
- Baseband signal: An unmodulated signal, with frequencies ranging from near zero to the baseband cut-off frequency. It is also called a lowpass signal, because it is limited by a lowpass filter.
- Bandwidth: The range of frequencies in a signal. For a bandpass signal, $f_\text{max}$ - $f_\text{min}$. For a lowpass signal, $f_\text{cutoff}$ - 0 = $f_\text{cutoff}$.

AM generates double sidebands (DSB) with the same bandwidth, which is eliminated or suppressed by using a filter, to form a single sideband (SSB), or single sideband suppressed carrier (SSB-SC) wave, and is reintroduced for remodulation at the receiver using a Beat Frequency Oscillator (BFO). This is done to avoid wastage of power, as carrier waves don't transmit information at all.

The frequencies used in the signal are lower than the frequencies in the carrier wave.

## Baseband and Passband transmissions
There are two types of transmission. Baseband and Passband. Passband refers to the modulated signal, while baseband signal just transmits the information from the near zero the baseband frequency with all it's energy. Only one message is passed through the entire baseband bandwidth. So, when this signal is modulated, we get the passband signal.

The baseband bandwidth is concentrated about 0 Hz, while the passband bandwidth is concentrated about the carrier wave frequency. Baseband signal is also known as lowpass signal, because the original signal bandwidth is only limited by a lowpass filter.

