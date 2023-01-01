Colour spaces are generally 3-dimensional spaces that represent the [[Tristimulus]] spectral sensitvities.
The colours are specified by a set of three numbers (e.g. CIE coordinates X,Y and Z, or values such as [[hue]], [[colourfulness]] and [[Lightness]])

There are also color spaces that are not 3-D.

Even though they are mostly 3-D, they are represented using 2D [[Chromaticity]] Diagrams.

# Types of Colour Spaces
## Physical Palettes
- Pantone
## Commercial
- [[Munsell Color System]]
- Natural Colour System (NCS)
- Pantone
## Not 3-D
**Dichromatic**
- RG Colour Model for early Technicolour films
- RGK for early colour printing
- rg chromaticity for Computer Vision
## Mathematical
### RGB Primaries
- Adobe RGB
- sRGB
- Adobe Wide Gamut RGB
- ProPhoto RGB
- DCI-P3
- [[CIE 1931 Colour Spaces]] ($2\degree$)
- [[CIE 1960 Uniform Colour Space]]
- CIE 1964 Colour Space ($10\degree$) or [[CIEUVW]] - less used
- [[CIE 1976 Uniform Colour Spaces]]
	- CIELUV (based on CIEUVW)
	- CIELAB
### Special
- rg chromaticity for Computer Vision
- [[LMS Colour Space]]
- TSL Colour Space - for face and skin detection

# Choosing Colour Spaces
There is no best colour space. Ideally you work in the same space as the destination device.
- For best performance: Use 8 bit sRGB D65, the default standard for web.
- For compositing: Use any linear RGB space with [[Tone Response Curve|gamma]] (TRC) removed (gamma = 1.0), 16 bit float and white point set to D65, white mapped to 1.0 and black to 0.0
- For perceptual tasks (to feel natural): Use Lab, Luv, LChuv, etc. with D65. Lab uses D65 normally in the textile, paint, and display device industries. They use floating point values and are also processor hogs, perhaps not as much as linear spaces.