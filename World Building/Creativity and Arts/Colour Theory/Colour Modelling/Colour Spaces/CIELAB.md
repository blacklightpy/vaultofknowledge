The CIELAB Colour space, also referred to as $L^*a^*b^*$ is a [Colour Space](Colour%20Space.md) defined by the [International Commission on Illumination](International%20Commission%20on%20Illumination.md).

It expresses colour as three values:
$L^*$ - Perceptual lightness
$a^*$ and $b^*$ - the four [Unique Colours](Unique%20Colours.md) of human vision: red, green, blue and yellow.

CIELAB produces colours that are more [perceptually linear](Uniform%20Colour%20Spaces.md) than other colour spaces.

It is defined with respect to a [White Point](white%20point.md), for which CIE recommends the [D65 Standard Illuminant](D65%20Standard%20Illuminant.md).

The $a^*$ and $b^*$ values are unbounded, and can easily exceed $\pm$ 150 to cover the entire colour gamut. But software implementations often trim the values. For example, in integer math, a range of -128 to 127 is chosen.