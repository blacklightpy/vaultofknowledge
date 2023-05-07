Chrominance or chroma (C) is the signal used in video systems to convey colour information of the picture seperately from the accompanying [Luma](luma.md) signal.

It is usually represented by two [Colour Difference](colour%20difference.md) components:
$U=B'-Y'$ (blue - luma)
$V=R'-Y'$ (red - luma)

In [Composite Video](Composite%20Video.md) signals, the U and V signals modulate a colour subcarrier signal, and the result is referred to as the chrominance signal, and the result is referred to as the chrominance signal. The phase and amplitude of this modulated chrominance signal correspond approximately to the [Hue](hue.md) and [Saturation](saturation.md) of the colour. In digital video and still image [colour spaces](colour%20space.md) such as [YCbCr](YUV%20and%20YCbCr.md), the luma and chrominance components are digital sample values.

Seperating RGB colour signals into luma and chrominance allows the bandwidth of each to be determined seperately. Typically chrominance bandwidth is reduced in analog [Composite Video](Composite%20Video.md) by reducing the bandwidth of modulated colour subcarrier, and in digital systems by [Chroma Subsampling](Chroma%20Subsampling.md).