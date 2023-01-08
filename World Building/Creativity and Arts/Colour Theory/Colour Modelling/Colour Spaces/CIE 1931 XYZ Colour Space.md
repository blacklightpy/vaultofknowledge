Also called CIEXYZ.

This model was based of the [[CIE 1931 RGB Colour Space]]. This allows representing all hues of the RGB colour space in the 2-dimensional [[CIE xyY Colour Space|xyY]] space derived from XYZ tristimulus values.

The XYZ coordinate system was deliberately designed so that the Y parameter is also a measure of the [[Lightness]] of the colour. 

The [[White Point]] of this colour space is at (1/3, 1/3) in xyY chromaticity diagram.

**Derivation of xyY coordinates from XYZ tristimulus values**
$x=\frac{X}{X+Y+Z}$
$y=\frac{Y}{X+Y+Z}$
$z=\frac{Z}{X+Y+Z}=1-x-y$

The derived colour space specified by x,y and Y is defined as the [[CIE xyY Colour Space]] colour space.

**Getting X and Y Tristimulus values from x,y and Y**
$X=\frac{Y}{y}x$
$Z=\frac{Y}{y}(1-x-y)$

This also solves the problem of [[Imaginary Colours]] in trichromatic additive spaces like RGB and [[LMS Colour Space|LMS]].

- The gamut of the human eye is not a triangle. (in this colour space?)