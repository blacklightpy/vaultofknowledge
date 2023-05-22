# Types of Cameras
- Single-lens Reflex (SLR)
- Digital SLR (DSLR)
- Mirrorless Interchangeable-Lens Camera (MILC) / Digital Single-Lens Mirrorless (DSLM)

# Parts
- Image Sensor
	- CMOS | CCD/EMCCD | Foveon | Film
		- CMOS generally has rolling electronic shutter and keeps ADC on board
		- CCD has a global shutter, draws more current and keeps ADC as a seperate unit
	- Illumination
		- BSI CMOS | FSI CMOS | Stacked CMOS
		- FSI: Sony Legacy | EXMOR (1-4th gen); not as bright as BSI
		- BSI: Sony EXMOR-R (5th gen EXMOR) | EXMOR-R STARVIS | EXMOR-RS | Samsung ISOCELL (cellphone sensors; problems they fix like light-leaks don't occur for larger sensors)
		- NOTE: EXMOR-R STARVIS series has low-light sensitivity and NIR capabilities, and RS extends it
		- BSI needs a mechanical shutter to freeze fast moving objects in place
		- Stacked Sensors: Sony Pregius (Stacked BSI and GS CMOS) | Pregius S (Places DRAM chip on the same silicon as the sensor, and increases readout speeds, thereby not needing a mechanical shutter)
	- Shutter Type
		- Global Shutter (GS): Sony Pregius | Pregius S
			- Pregius borrows ideas from CCD Architecture
	- Color Filter Array
		- Bayer Filter
			- Tetracell, Quad-Bayer
		- Fujifilm X-Trans
		- Huawei RYYB
		- Quantum efficiency diagrams show how sensitively different sensors react to light of different wavelengths
- Lens Mount
- Lens
- Image Signal Processor (ISP)
- Light Meter

## Parameters
- Image Sensor
	- Image Sensor Size
		- Full Frame | APS-C | Four Thirds | 1/1.7" | 1/2.3" | 1/3.2"
- Mount FFD
- Lens Aperture, focal length and FOV
- Shutter Type
	- Global | Rolling | Pseudo-Global (All Rows mode)
	- Pseudo-global mode captures light only at the interval where all rows are in the same exposure from the exposure parallelogram
- Autofocus
	- Contrast-detection AF
	- Pixel Detection AF
		- 2x1 OCL, 2x2 OCL (On-Chip Lens)