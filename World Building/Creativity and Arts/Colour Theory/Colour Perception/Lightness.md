Also known as luminance or intensity of a colour. It is the visual perception of the [[Luminance]] ($L$) of an object. In [[Colorimetry]] and [[Colour Appearance Models]], lightness is a prediction of how an illuminated colour will appear to a standard observer. While luminance is a linear measurement of light, lightness is a linear prediction of the human perception of light.

But human vision's lightness perception is non-linear relative to light, so we have to use some alternative for perceptual lightness. Change of luminance can change the colour of light.

In colour spaces like [[World Building/Creativity and Arts/Colour Theory/Colour Spaces/Munsell Colour System|Munsell]], [[Cylindrical Colour Space Models|HCL]] and [[CIELAB]], the lightness value achromatically constrains the maximum and minimum limits, and operates independently of the [[Hue]] and [[Chroma]].

The [[World Building/Creativity and Arts/Colour Theory/Colour Spaces/Munsell Colour System|Munsell value]] has long been used as a [[Uniform Colour Spaces|perceptually uniform]] lightness scale. [[CIELAB]] and [[CIELUV]] use $L^*$ as the symbol for perceptual lightness (in contrast with luminance $L$). [[CIECAM02]] uses $J$.

In a [[Subtractive Colour Model|subtractive colour model]], the lightness changes to a colour through various [[Tint, shade and tone|tints, shades or tones]] can be achieved by adding white, black or grey respectively. This also reduces [[Saturation]].

# Relationship of Munsell value to the relative luminance
## Munsell-Sload-Godlove value function (1933)
They launched a study on the Munsell neutral value scale, considering several proposals relating the [[Relative Luminance]] to the Munsell value, and they suggest:
$V^2=1.4742Y-0.004743Y^2$
## Newhall-Nickerson-Judd value function (1943)
They suggest a quintic parabola (relating the reflectance in terms of value):
$Y=1.2219V-0.23111V^2+0.23951V^3-0.021009V^4+0.0008404V^5$
## 1976 CIELAB
[[CIELAB]] uses the following formula:
$L^*=116(\frac{Y}{Y_n})^\frac{1}{3}-16$
where $Y_n$ is the [[CIE 1931 XYZ Colour Space]] Y tristimulus value of the reference [[White Point]] (the n subscript suggests "normalized") and is subject to the restriction $\frac{Y}{Y_n}>0.01$. Pauli removes this restriction by computing a linear extrapolation which maps $\frac{Y}{Y_n}=0$ to $L^*=0$ and is tangent to the formula above at the point at which the linear extension takes effect.