# Analog Signal
### Analog Data
- Amplitude Modulation (AM)
- Frequency Modulation (FM)
- Phase Modulation (PM)
### Digital Data
- BPSK
- QPSK
- **Binary Offset Carrier (BOC)**
	a.k.a Split-Spectrum Modulation ([Wikipedia](https://en.wikipedia.org/wiki/Binary_offset_carrier_modulation))
	Developed for satellites; used by GPS, Galileo, NavIC
	- Sine BOC (sinBOC)
	- Cosine BOC (cosBOC)
	- Alternate BOC (altBOC)
	- Double BOC (DBOC)
	- **Multiplexed BOC (MBOC)**
		Combines a sinBOC(1,1) signal with a sinBOC(6,1) signal, via either of CBOC or TMBOC Implemenation.
		- Composite BOC (CBOC) - Used in Galileo
		- Time-multiplexed BOC (TMBOC) - Used in GPS L1C
		- **Synthesized BOC (SBOC)** - Used in NavIC
			SBOC Modulation Scheme is a non-linear combining method to generate constant envelope composite signal with MBOC (6,1,1/11) PSD.
			- Performance in similar to CBOC and TMBOC ([PowerPoint Presentation (unoosa.org)](unoosa.org)))

# Digital Signal
### Analog Data
- PAM
- PWM
- PPM
### Digital Data
- PCM