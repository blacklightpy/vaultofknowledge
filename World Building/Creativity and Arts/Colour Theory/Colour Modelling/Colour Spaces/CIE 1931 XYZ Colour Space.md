Also called CIEXYZ.

This model was based of the [[CIE 1931 RGB Colour Space]]. This allows representing all hues of the RGB colour space in the 2-dimensional [[CIE xyY Colour Space|xyY]] space derived from XYZ tristimulus values.

This space was derived for the sake of easier computation, with the assumption that Grassman's law held, and that the new space would be related to the [[CIE 1931 RGB Colour Space|CIE RGB]] space by a linear transformation. This new space would be derived using three new colour matching functions $\bar{x(\lambda)}$, $\bar{y(\lambda)}$ and $\bar{z(\lambda)}$.

It was chosen according to a few desired properties:
- The XYZ coordinate system was deliberately designed so that the Y parameter is also a measure of the [[Lightness]] of the colour. This was achieved by setting $\bar{y}(\lambda)$ exactly equal to the [[Luminosity Functions|photopic luminosity function]].
- The [[White Point]] of this colour space would be at x=y=z=1/3
- By virtue of the definition of [[chromaticity]] and the require

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