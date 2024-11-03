Colour spaces are generally 3-dimensional spaces that represent the [[Tristimulus]] spectral sensitvities.
The colours are specified by a set of three numbers (e.g. CIE coordinates X,Y and Z, or values such as [[Hue]], [[Colourfulness]] and [[Lightness]]). There are also color spaces that are not 3-D (monochromatic, dichromatic)

Even though they are mostly 3-D, they are represented using 2D [[Chromaticity]] Diagrams for simplicity.

# Types of Colour Spaces
## Physical Palettes
- PANTONE
## Commercial
- [[Munsell Colour System]]
- Natural Colour System (NCS)
- PANTONE
## Mathematical
- [[CIE Colour Spaces]]
- [[RGB Colour Spaces|RGB Primaries]]
- [[Cylindrical Colour Space Models]]
- [[YUV and YCbCr]]
- [[YIQ]]
- [[Munsell Colour System]]
- Helmholtz Colour Coordinates
	- Chromaticity is defined by [[Hue|dominant wavelength]] and [[Excitation Purity|purity]]
- CAM02 Uniform Color Space (CAM02-UCS)
- CAM-16
### Not 3-D
**Dichromatic**
- RG Colour Model for early Technicolour films
- RGK for early colour printing
- rg chromaticity for Computer Vision
### Special
- rg chromaticity for Computer Vision
- [[LMS Colour Space]]
- TSL Colour Space - for face and skin detection
# Choosing Colour Spaces
There is no best colour space. Ideally you work in the same space as the destination device.
- For best performance: Use 8 bit sRGB D65, the default standard for web.
- For compositing: Use any linear RGB space with [[Tone Response Curve|gamma]] (TRC) removed (gamma = 1.0), 16 bit float and white point set to D65, white mapped to 1.0 and black to 0.0
- For perceptual tasks (to feel natural): Use $\text{L*a*b*}$, $\text{L*u*v*}$, $\text{LCh}_\text{uv}$, etc. with D65. Lab uses D65 normally in the textile, paint, and display device industries. They use floating point values and are also processor hogs, perhaps not as much as linear spaces.