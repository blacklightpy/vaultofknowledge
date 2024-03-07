The CIELAB Colour space, also referred to as $L^*a^*b^*$ is a [[Colour Space]] defined by the [[International Commission on Illumination]] as one of the [[CIE 1976 Uniform Colour Spaces]], alongside [[CIELUV]].

It expresses colour as three values:
$L^*$ - Perceptual lightness
$a^*$ and $b^*$ - the four [[Unique Colours]] of human vision: red, green, blue and yellow.

CIELAB, along with [[CIELUV]] produces colours that are more [[Uniform Colour Spaces|perceptually linear]] than other colour spaces.

It is defined with respect to a [[White Point]], for which CIE recommends the [[D65 Standard Illuminant]].

The $a^*$ and $b^*$ values are unbounded, and can easily exceed $\pm$ 150 to cover the entire colour gamut. But software implementations often trim the values. For example, in integer math, a range of -128 to 127 is chosen.