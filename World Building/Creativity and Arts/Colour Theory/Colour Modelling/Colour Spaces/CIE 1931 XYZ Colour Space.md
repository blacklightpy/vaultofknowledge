Also called CIEXYZ.

This model was based of the [[CIE 1931 RGB Colour Space]]. This allows representing all hues of the RGB colour space in the 2-dimensional [[CIE xyY Colour Space|xyY]] space derived from XYZ tristimulus values.

This space was derived for the sake of easier computation, with the assumption that Grassman's law held, and that the new space would be related to the [[CIE 1931 RGB Colour Space|CIE RGB]] space by a linear transformation. This new space would be derived using three new colour matching functions $\bar{x(\lambda)}$, $\bar{y(\lambda)}$ and $\bar{z(\lambda)}$.

It was chosen according to a few desired properties:
- The colour matching functions were required to be greater than or equal to zero everywhere. In 1931 computations were done by hand or slide rule, and the specification of positive values was a useful computational simplification.
- The XYZ coordinate system was deliberately designed so that the Y parameter is also a measure of the [[Lightness]] of the colour. This was achieved by setting $\bar{y}(\lambda)$ exactly equal to the [[Luminosity Functions|photopic luminosity function]] $V(\lambda)$ for the [[CIE Standard Observer]]. The fact that the luminance function could be constructed by a linear combination of the RGB colour matching functions was not guaranteed, but it was expected to be nearly true due to the near-linear nature of human sight. Again the main reason for this requirement was computational simplification.
- The [[White Point]] of this colour space would be at x=y=z=1/3
- By virtue of the definition of [[chromaticity]] and the requirement of positive values x and y, it can be seen that the gamut of all colours will lie inside the triangle (1,0), (0,0) and (0,1). It was required that the gamut fill this space practically completely.
- It was found that the $\bar{z}(\lambda)$ colour matching function could be set to zero above 650nm while remaining within the bounds of experimental error. This was also for computational simplicity.

This defined a linear transformation from the CIE RGB space to the XYZ space.

The

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