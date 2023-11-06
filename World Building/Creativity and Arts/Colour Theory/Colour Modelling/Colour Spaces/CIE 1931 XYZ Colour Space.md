Also called CIEXYZ.

This model was based of the [[CIE 1931 RGB Colour Space]]. This allows representing all hues of the RGB colour space in the 2-dimensional chromaticity diagram of the [[CIE xyY Colour Space|xyY]] space derived from XYZ tristimulus values.

The XYZ coordinate system was deliberately designed so that the Y parameter is also a measure of the [[Lightness]] of the colour. The [[Chromaticity]] is then specified by two derived parameters x and y.

# Derivation
## Derivation of the colour space
This space was derived with the assumption that Grassman's law held, and that the new space would be related to the [[CIE 1931 RGB Colour Space|CIE RGB]] space by a linear transformation. This new space would be derived using three new colour matching functions $\bar{x}(\lambda)$, $\bar{y}(\lambda)$ and $\bar{z}(\lambda)$.

It was chosen according to a few desired properties:
- The colour matching functions were required to be greater than or equal to zero everywhere. In 1931 computations were done by hand or slide rule, and the specification of positive values was a useful computational simplification.
-  This was achieved by setting $\bar{y}(\lambda)$ exactly equal to the [[Luminosity Functions|photopic luminosity function]] $V(\lambda)$ for the [[CIE Standard Observer]]. The fact that the luminance function could be constructed by a linear combination of the RGB colour matching functions was not guaranteed, but it was expected to be nearly true due to the near-linear nature of human sight. Again the main reason for this requirement was computational simplification.
- The [[White Point]] of this colour space would be at x=y=z=1/3
- By virtue of the definition of [[Chromaticity]] and the requirement of positive values x and y, it can be seen that the gamut of all colours will lie inside the triangle (1,0), (0,0) and (0,1). It was required that the gamut fill this space practically completely.
- It was found that the $\bar{z}(\lambda)$ colour matching function could be set to zero above 650nm while remaining within the bounds of experimental error. This was also for computational simplicity.

This defined a linear transformation from the CIE RGB space to the XYZ space. (See Wikipedia for the transformation).

## Derivation of the colour matching functions
By the requirement to have a constant white point, the integrals of the colour matching functions should all be equal, and this is set by the integral of $\bar{y}(\lambda)$ as per the requirements set above.

The colour matching functions were decided experimentally and were discretized at 5 nm intervals from 380nm to 780 nm and distributed by the CIE.

The tabulated sensitvity curves have a certain amount of arbitrariness in them. The shapes of individual X, Y and Z sensitivity curves can be measured with a reasonable accuracy. However, the overall luminosity curve, which is a weighted sum of these three curves, is subjective, since it involves asking a test person whether two light sources have the same brightness, even if they are in completely different colours. So the relative magnitudes of X, Y and Z are also arbitary. One could define a valid colour space with an X sensitivity curve that has twice the amplitude. This new colour space would have a different shape.

The sensitivity curves in the CIE 1931 and 1964 XYZ colour spaces are scaled to have equal areas under the curves.

## Derivation of the xyY Space
**Derivation of xyY coordinates from XYZ tristimulus values**

xyz coordinates are the normalized form of XYZ coordinates. By doing this, the intensity is normalized out and the chromaticity is obtained as the x,y coordinates.

$x=\frac{X}{X+Y+Z}$
$y=\frac{Y}{X+Y+Z}$
$z=\frac{Z}{X+Y+Z}=1-x-y$

The derived colour space specified by x,y and Y is defined as the [[CIE xyY Colour Space]] colour space.

**Getting X and Y Tristimulus values from x,y and Y**
$X=\frac{Y}{y}x$
$Z=\frac{Y}{y}(1-x-y)$

This also solves the problem of [[Imaginary Colours]] in trichromatic additive spaces like RGB and [[LMS Colour Space|LMS]].

- The gamut of the human eye is not a triangle. (in this colour space?)