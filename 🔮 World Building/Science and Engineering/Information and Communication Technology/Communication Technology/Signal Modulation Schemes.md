# Analog Signal
## Analog Data
- [[Amplitude Modulation]] (AM)
- [[Frequency Modulation]] (FM)
- [[Phase Modulation]] (PM)
## Digital Data
- [[Phase Shift Keying]] (PSK)
	- Binary PSK (BPSK)
	- Quadrature PSK (QPSK)
	- 8PSK
	- 16PSK
	- Differential PSK (DPSK)
	- Differential QPSK (DQPSK)
	- Offset QPSK (OQPSK)
	- $\pi/4$ QPSK
- [[Frequency Shift Keying]] (FSK)
	- Audio Frequency Shift Keying (AFSK)
	- Multi-Frequency Shift Keying (MFSK)
	- Dual-tone Multi-Frequency (DTMF)
- [[Amplitude Shift Keying]] (ASK)
	- On-off Keying (OOK)
- [[Continuous Phase Modulation]] (CPM)
	- Minimum Shift Keying (MSK)
	- Gaussian Minimum Shift Keying (GMSK)
	- Continuous Phase Frequency Shift Keying (CPFSK)
- [[Orthogonal Frequency-Division Multiplexing]] (OFDM)
	- Discrete Multitone (DMT)
- [[Trellis Coded Modulation]] (TCM)

- [[Hierarchical Modulation]]
	- [[Quadrature Amplitude Modulation]] (QAM) **(A combination of PSK and ASK)**
		- Polar Modulation
	- [[Wavelet Modulation]] / Fractal Modulation

- [[Spread Spectrum Modulation Techniques]]
	- [[Direct Sequence Spread Spectrum]] (DSSS)
	- [[Chirp Spread Spectrum]] (CSS)
	- [[Frequency-Hopping Spread Spectrum]] (FHSS)
	- [[Time-Hopping Spread Spectrum]] (THSS)
# Digital Signal
## Analog Data
- [[Pulse Amplitude Modulation]] (PAM)
- [[Pulse Width Modulation]] (PWM)
- [[Pulse Phase Modulation]] (PPM)
## Digital Data
- [[Pulse Code Modulation]] (PCM)
# Images
## ASK vs FSK vs PSK of a digital stream

![[Types of Digital Modulation.png]]
# Niche Use Cases
## Satellites
These schemes are developed for satellites.
They use analog signals to carry digital data.

> [!NOTE]
> Synthesized BOC (SBOC) is used in NavIC satellites.
> Similarly,
> - Composite BOC (CBOC) is used in Galileo
> - Time-Multiplexed BOC (TMBOC) is used in GPS L1C

- Binary Offset Carrier (BOC) / Split-Spectrum Modulation
	- Sine BOC (sinBOC)
	- Cosine BOC (cosBOC)
	- Alternate BOC (altBOC)
	- Double BOC (DBOC)
	- Multiplexed BOC (MBOC)
		- Composite BOC (CBOC)
		- Time-multiplexed BOC (TMBOC)
		- Synthesized BOC (SBOC)
## Notes

### Binary Offset Carrier
See the Wikipedia page: [Binary Offset Carrier | Wikipedia](https://en.wikipedia.org/wiki/Binary_offset_carrier_modulation)
#### Multiplexed BOC
Multiplexed BOC combines a sinBOC(1,1) signal with a sinBOC(6,1) signal, via either of CBOC or TMBOC Implemenation.
##### Synthesized BOC
Synthesized BOC Modulation Scheme is a non-linear combining method to generate constant envelope composite signal with MBOC (6,1,1/11) PSD.

It's performance is similar to CBOC and TMBOC
(Source: [PowerPoint Presentation | unoosa.org](https://www.unoosa.org/documents/pdf/icg/2021/ICG15/WGS/icg15_wgs_01.pdf))