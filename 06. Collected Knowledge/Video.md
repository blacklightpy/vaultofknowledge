# Characteristics
FPS
Interlaced (NTSC, PAL (EBU Tech 3213), SECAM) / Progressive
Aspect Ratio
Colour Model and Depth
Video quality
Video Compression Method

- Analog
	- Composite Video
		- Typically RCA Connector
		- Three variants depending on colour system used: 
			- NTSC (525 (480 visible) lines 50 fields 60 Hz) (digital: 480p 30/29.97 fps (60i/30p)) - YIQ
			- PAL (625 (576 visible) lines 50 Hz) (digital: 576i or 576i50 (50i/25p)) - YUV
				- Variants: B, G, H, I, D/K, L, M (YUV), N (YDbDr)
			- SECAM (built in search of NTSC hue problems) - YDbDr
		- Signal contains on one wire, the video information required to recreate a colour picture, as well as line and frame synchronization pulses. The colour video signal is a linear combination of the [[Luminance]] (Y) of the picture and a [[Signal Modulation Schemes|modulated]] [[Chrominance]] (C), a combination of [[Hue]] and [[Saturation]]. The combining process is different for NTSC, PAL and SECAM systems.
		- The signals may be separated by a [[Comb Filter]]. The combination is a frequency division technique, but it is more complex than [[Frequency Division Multiplexing]].
	- S-Video
		- 2 channel YC
	- Component Video
		- 3-channel YPbPr
	- SCART
	- VGA
	- TRRS
	- D-Terminal
- Digital
	- SDI
	- DVI
	- HDMI
	- DisplayPort

# Encoding Formats


# Types
- Interlaced
- Interlaced video is a technique for doubling the perceived frame rate of a video without consuming more bandwidth. It only contains two fields for a video frame captured consecutively. This enhances motion perception and reduces flicker by taking advantage of the phi phenomenon (illusory ).
	- Fields
		- One of the many still images which are displayed sequentially to create the impression of motion on the screen. Two fields comprise one video frame.
		- When fields are displayed on a video monitor, they are interlaced so that the content of one field will be used on all of the odd-numbered lines on the screen and the other field will be displayed on the even lines.
		- Converting fields to a still frame image requires a process called deinterlacing, in which the missing lines are duplicated or interpolated to recreate the information that would have been contained in the field. However, since each field contains only half of the information, deinterlaced images do not have the resolution of a full frame.
	- Frames
		- Video
			- Video Frames were represented as analog waveforms in an analog raster scan across the screen
				- In raster scan the image is divided into a sequence of scan lines
				- Scan lines are transmitted as analog signals in which varying voltages represented the intensity of light
				- Analog TV has scan lines but no scan pixels, instead the signal varies along the scan line
					- They normally used interlaced scan
					- CRTs produce persistence of motion due to -  phosophor persistence (to reduce this brightness difference in the first lines is why they used interlacing since only every other line is drawn in a single field of broadcast video), and [[Persistence of Vision]].
				- Digital TV systems represent images as a raster of pixels, in either RGB colour space or others such as YCbCr. Standards for rasters include Rec.601 for SDTV, Rec.709 for HDTV etc.
			- Analog blanking intervals seperated frames
		- Physical Film
			- Frame lines
- Progressive
	- This is how celluloid, and digital TV works