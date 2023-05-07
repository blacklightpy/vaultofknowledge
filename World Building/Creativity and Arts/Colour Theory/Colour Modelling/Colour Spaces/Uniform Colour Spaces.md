A uniform colour space (UCS) is a [colour model](../Colour%20Models/Colour%20Models.md) that seeks to make the colour-making attributes perceptually uniform, that is identical spatial distance between two colours in a color space equals identical amount of percieved [Colour Difference](../Colour%20Difference.md).

# Tolerance
It asks the question, what is the set of colours which are acceptably close to a given reference?

If distance measures are perceptually uniform throughout the gamut, then the set of points which are imperceptibly/acceptably close to a given reference are simply the set of points whose distance to the reference is less than the just-noticable-difference (JND).

The differences of sizes of tolerance contours signify non-uniformity of distance measures across the gamut, and that is what motivated the creation of [CIELAB](CIELAB.md) and [CIELUV](CIELUV.md)

A [CAM](../Colour%20Appearance%20Models/Colour%20Appearance%20Models.md) under a fixed viewing condition results in a UCS; a UCS with a modelling of variable viewing conditions results in a CAM. A UCS without such modelling can also be a rudimentary CAM.

# Attempts
- [CIE 1960 UCS](CIE%201960%20Uniform%20Colour%20Space.md)
- [CIEUVW](CIEUVW.md)
- [CIELUV](CIELUV.md)
- [CIELAB](CIELAB.md)
- [HSLuv](HSLuv.md)
- Newer Models
	- IPT colour space of 1998 is uniform after cylindrical transform
	- OKLab's CAM(CAM16)/OKLCH is uniform after cylindrical transformation.