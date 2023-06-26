Circular Error Probable (CEP) - Military Weapon Hit Radius
Dual Band GNSS - used to be $5000 until recently (2020), but now it's coming to smartphones

Satellite information is given in RINEX Raw Data Format (?) RTKLIB needs RINEX.

# Steps in RTK
1. Pseudo Range Measurement
	
	A PRN code noise is sent at periodic intervals of 1023 Hz. The time of start and recieving of the signal is used to measure the distance as
	`D = c(tr-ts)`
	But this is not very accurate as 
	a) the time of recieval is not properly calculated
	`tr +/- delta(t)`
	`D = c(tr-ts) +/- delta(d)`
	The accuracy is around 2-3 meters
	b) The frequency of the PRN, or C/A code (C/A code - civil, P-code - military, encrypted) is 1 MHz, and accuracy is 1% of the wavelength. The code signal period length is 1 ms, or 290m, considering speed of light. 1% of 290m is 2.9m, which is not enough for all applications.
	
	Two options to fix this would be to increase frequency of signal, or to perform some error correction by using differential setups or error models
	
	The frequency of the signal is increased by using carrier waves for PRN codes - e.g. L1 and L2 bands for military and civilian use. The L1 band is at ~1.5 MHz and therefore has a wavelength of 19 cm. This means a theoretical accuracy of 1.9 mm.
	
	However, in practice, ionosphere and troposphere interferences lower this to around 2-3 meters. 
2. Carrier Phase based Measurement
	
	Determination of number of cycles require complicated mathematical algorithms. If it isn't completed, there is an ambiguity in phase which affects the accuracy. Based on this, the operational mode is classified into two types - fixed and float. Fixed mode is when carrier cycles are resolved to an integer number, and float mode is when it is resolved to a decimal.

**Accuracy**
Accuracy is measured in GPS in CEP, which is in RMS (68.3% probability)
e.g. 0.01m +/- 1 ppm CEP => +/- 1 mm every km at a probability of 63.8% => every 10 km => 20 mm (10+10x1) inaccuracy

Normally, when NTRIP is used, a dedicated NTRIP client should be integrated

### Network RTK
CORS
Private networks
**Correction formats**
FKP
Master Auxiliary Concept (MAC)
Virtual Reference Station (VRS)
