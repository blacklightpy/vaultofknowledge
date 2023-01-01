This model was based of the [[CIE 1931 RGB Colour Space]]. This allows representing all hues of the RGB colour space in the 2-dimensional xyY coordinates derived from XYZ tristimulus values.

The XYZ coordinate system was deliberately designed so that the Y parameter is also a measure of the [[luminance]] of the colour. This is also called the xyY colour space for the same reason.

The [[white point]] of this colour space is at (1/3, 1/3) in xyY chromaticity diagram.

**Derivation of xyY coordinates from XYZ tristimulus values**
$x=\frac{X}{X+Y+Z}$
$y=\frac{Y}{X+Y+Z}$
$z=\frac{Z}{X+Y+Z}=1-x-y$

**Getting X and Y Tristimulus values from x,y and Y**
$X=\frac{Y}{y}x$
$Z=\frac{Y}{y}(1-x-y)$

This also solves the problem of [[imaginary colours]] in trichromatic additive spaces like RGB and [[LMS Colour Space|LMS]].

- The gamut of the human eye is not a triangle. (in this colour space?)