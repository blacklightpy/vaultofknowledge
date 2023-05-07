Also known as luminance or intensity of a colour. It is the visual perception of the [Luminance](Luminance.md) ($L$) of an object. In [Colorimetry](colorimetry.md) and [Colour Appearance Models](colour%20appearance%20models.md), lightness is a prediction of how an illuminated colour will appear to a standard observer. While luminance is a linear measurement of light, lightness is a linear prediction of the human perception of light.

But human vision's lightness perception is non-linear relative to light, so we have to use some alternative for perceptual lightness. Change of luminance can change the colour of light.

In colour spaces like [Munsell](World%20Building/Creativity%20and%20Arts/Colour%20Theory/Colour%20Spaces/Munsell%20Colour%20System), [HCL](Cylindrical%20Colour%20Space%20Models.md) and [CIELAB](CIELAB.md), the lightness value achromatically constrains the maximum and minimum limits, and operates independently of the [Hue](Hue.md) and [Chroma](Chroma.md).

The [Munsell value](World%20Building/Creativity%20and%20Arts/Colour%20Theory/Colour%20Spaces/Munsell%20Colour%20System) has long been used as a [perceptually uniform](Uniform%20Colour%20Spaces.md) lightness scale. [CIELAB](CIELAB.md) and [CIELUV](CIELUV.md) use $L^*$ as the symbol for perceptual lightness (in contrast with luminance $L$). [CIECAM02](CIECAM02.md) uses $J$.

In a [subtractive colour model](Subtractive%20Colour%20Model.md), the lightness changes to a colour through various [tints, shades or tones](Tint,%20shade%20and%20tone.md) can be achieved by adding white, black or grey respectively. This also reduces [Saturation](Saturation.md).

# Relationship of Munsell value to the relative luminance
## Munsell-Sload-Godlove value function (1933)
They launched a study on the Munsell neutral value scale, considering several proposals relating the [Relative Luminance](Relative%20Luminance.md) to the Munsell value, and they suggest:
$V^2=1.4742Y-0.004743Y^2$
## Newhall-Nickerson-Judd value function (1943)
They suggest a quintic parabola (relating the reflectance in terms of value):
$Y=1.2219V-0.23111V^2+0.23951V^3-0.021009V^4+0.0008404V^5$
## 1976 CIELAB
[CIELAB](CIELAB.md) uses the following formula:
$L^*=116(\frac{Y}{Y_n})^\frac{1}{3}-16$
where $Y_n$ is the [CIE 1931 XYZ Colour Space](CIE%201931%20XYZ%20Colour%20Space.md) Y tristimulus value of the reference [White Point](white%20point.md) (the n subscript suggests "normalized") and is subject to the restriction $\frac{Y}{Y_n}>0.01$. Pauli removes this restriction by computing a linear extrapolation which maps $\frac{Y}{Y_n}=0$ to $L^*=0$ and is tangent to the formula above at the point at which the linear extension takes effect.