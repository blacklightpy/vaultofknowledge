6G is entering the THz range.

But 400THz is the beginning of visible spectrum! (Oops, I thought it was 4, and that sounded too close to me at first :P. But the idea holds)

We have IR LEDs, IR sensors, Visible LEDs and Visible Cameras.
What does 6G, or 7G mean for these?

+NOTE: I also just heard that above 300 GHz, all power is absorbed within a few metres, and the atmosphere is effectively opaque. Although I'd have to verify this claim, considering the progress.

My guess is that LEDs are diffuse radiators with a mix of frequencies, and hence they are not ideal for modulation.
And I would guess IR LEDs are used as remote controllers by intensity modulation within a pretty large margin of error.
How many controls do we realistically expect a TV to have anyways? This would also explain why remotes go out of range very quickly (aside from the fact that IR light is easily susceptible to obstruction).

Also, well, Li-Fi is a thing. And, Morse code using light, is nothing but flickering it completely on and off, like 1s and 0s. We can do a lot better than that using varying intensities, even in a way that human's can't recognize.

Ahh, here I see the problem of using cameras. They just measure the intensity of light to a good approximation for optical vision. They struggle at differentiating different levels of lightness, especially visible in low light conditions. So we don't have the transceiver technology for light that is modulated in any other way than by the intensity. This is also why AM is easier than FM and it is less prone to obstructions than FM, but is more prone to interference than FM.

This is partly because AM typically uses longer wavelengths and hence more omnidirectional antennas, while FM antennas use shorter wavelengths and more directed antennas. This is to account for good bandwidth, FM uses UHF or VHF bands to have many frequency channels, while AM generally uses SW, MW or LW bands. The directionality is a by-product of the frequency, generally, higher frequency antennas are more directional, or line-of-sight. This is also because AM waves are refracted back to the ground by the ionosphere, but FM waves pass through the ionosphere, and hence are more directional. This is called skywave propagation.

But, the range is only affected by the frequency of the carrier wave, not the modulation used. It's just that the higher the frequency, more the possible bandwidth of the modulated signal. Now, for a given bandwidth, the data rate depends on the specific modulation used (such as FSK, QPSK, etc.). That is a part of digital communications and signal processing. After all, all digital signals are analog signals in the first place, just cut off periodically. 

Longer waves also travel longer at night, this is commonly to the benefit of amateur radio operators, because the lower altitude D and E layers of the ionosphere lose energy, and the reflection happens at the higher F1/F2 layers allowing DX. Skywave propagation only happens in the 3MHz - 30 MHz range.

The frequencies above 30 MHz can also be scattered by the troposphere (tropo-scattering) back to Earth, which gives it a shorter range, and this also requires more power. UHF and SHF frequencies are commonly used. The propagation losses are very high (only about 1 trillionth of the signal level is reflected back), and hence lower frequencies like HF and VHF aren't enough.

Higher frequencies usually pass through the ionosphere. Lower frequencies are obstructed, especially by the Van Allen belt, but we don't use them for space communications, and there can still be some leakage.

Fun fact: LEDs are used as transmitters and detectors too. This was invented by Forrest Mimms.


NOTE: YES! Remotes use on-off keying (OOK), which is the simplest form of ASK. Which is something like Morse code. This is referred to as Continuous Wave (CW) operation. OOK is more spectrally efficient that FSK, but is more sensitive to noise when using a regenerative receiver or a poorly implemented superheterodyne reciever.



# Terms
- Passband: The frequency range that can pass through a bandpass filter.
- Bandpass Filter: A filter that only allows bands in a given range to pass. It usually has two band-stop filters. The response of a bandpass filter would include the bandpass signal and the stopband filter outputs on either sides.
	- Bandpass is different from passband, because of the ways of English, where the adjective goes first. We are highlighting the "pass" here, while there we are highlighting the "band".
- Band-stop Filter: A filter that attenuates frequencies of a given range, usually used in a bandpass filter. It has two non-zero and non-infinite corner frequencies. The required attenuation maybe 20-120 dB higher than the passband attenuation, which is often 0 dB.
- Stopband: The frequency range that is stopped by a band-stop filter.
	- Typically, the width of the stopband is 1 or 2 decades away.
		- A decade is a frequency interval of ten times, like an octave, which is twice the original frequency. This is measures frequency levels, unlike decibel, another [[Logarithmic Scale]] unit which measures amplitudes.
		- The steepness of the [[04. Organized Knowledge - Old Format/Science and Engineering/Mathematics/Applied Mathematics/Control Theory/Transfer Function|transfer function]] with frequency of a filter is called the roll-off.
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

