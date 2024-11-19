- Microphone frequency response: https://mynewmicrophone.com/complete-guide-to-microphone-frequency-response-with-mic-examples/

# Audio Engineering
- Audio Normalization
	- Peak Normalization
		- deciBels relative to full scale (dBFS)
	- Loudness Normalization
		- Loudness, K-weighted, relative to Full Scale (LKFS)
			- a.k.a. Loudness Units Full Scale (LUFS)
- Bit Depth
	- Dynamic Range (dB)
		- Quanization Error


## What is Bit Depth

- Digital audio is quantized, meaning audio is recorded as multiple samples
- Sampling Rate is the rate at which audio samples are taken with respect to time
- Bit Depth is the resolution of the amplitude of each sample.

## Errors in Quantization
### Noise Floor (due to quantization)
So higher bit depth makes for a smoother signal waveform, and a lower bit depth makes a choppy signal waveform. But we will never have a completely smooth waveform. We always round off or truncate the last digit of the binary value during quantization, causing an difference in the signal, which becomes the quantization noise.

Of course, the signals can be decomposed into harmonics. But when it does, depending on the bit depth, there will be white noise at lower amplitudes, called the noise floor.

Harmonic relationships between the sample rate, audio and bit depth can also create patterns in the quantization noise, which is called correlated noise. This can result in higher amplitudes at certain frequencies due to resonance, leading to a higher noise floor.

But this can be reduced by [[Dither|dithering]], a process where randomized values are used instead of truncating amplitude values. This results in uncorrelated noise, with no resonance, and that gives a lower noise floor.
### Distortion (due to clipping)
If the input value is larger than what the recorder is designed to encode, it will result in distortion, due to clipping.

The maximum amplitude before which clipping occurs is called 0 dBFS (0dB relative to full scale).