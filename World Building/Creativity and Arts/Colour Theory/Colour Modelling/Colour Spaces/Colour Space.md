Colour spaces are generally 3-dimensional spaces that represent the [Tristimulus](Tristimulus.md) spectral sensitvities.
The colours are specified by a set of three numbers (e.g. CIE coordinates X,Y and Z, or values such as [Hue](Hue.md), [Colourfulness](Colourfulness.md) and [Lightness](Lightness.md)). There are also color spaces that are not 3-D (monochromatic, dichromatic)

Even though they are mostly 3-D, they are represented using 2D [Chromaticity](Chromaticity.md) Diagrams for simplicity.

# Types of Colour Spaces
## Physical Palettes
- Pantone
## Commercial
- [Munsell Colour System](Munsell%20Colour%20System.md)
- Natural Colour System (NCS)
- Pantone
## Mathematical
- [CIE Colour Spaces](CIE%20Colour%20Spaces.md)
- [RGB Primaries](RGB%20Colour%20Spaces.md)
- HSL
- HSV
- HSB
- [YUV and YCbCr](YUV%20and%20YCbCr.md)
- [YIQ](YIQ.md)
- [Munsell Colour System](Munsell%20Colour%20System.md)
- Helmholtz Colour Coordinates
	- Chromaticity is defined by [dominant wavelength](Hue.md) and [purity](Excitation%20Purity.md)
### Not 3-D
**Dichromatic**
- RG Colour Model for early Technicolour films
- RGK for early colour printing
- rg chromaticity for Computer Vision
### Special
- rg chromaticity for Computer Vision
- [LMS Colour Space](LMS%20Colour%20Space.md)
- TSL Colour Space - for face and skin detection

# Choosing Colour Spaces
There is no best colour space. Ideally you work in the same space as the destination device.
- For best performance: Use 8 bit sRGB D65, the default standard for web.
- For compositing: Use any linear RGB space with [gamma](Tone%20Response%20Curve.md) (TRC) removed (gamma = 1.0), 16 bit float and white point set to D65, white mapped to 1.0 and black to 0.0
- For perceptual tasks (to feel natural): Use Lab, Luv, LChuv, etc. with D65. Lab uses D65 normally in the textile, paint, and display device industries. They use floating point values and are also processor hogs, perhaps not as much as linear spaces.