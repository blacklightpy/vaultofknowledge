Gamma Correction or Gamma is defined as the average slope of the function that relates the logarithm of pixels to the logarithm of exposure. It is a nonlinear operation used to encode and decode [[Luminance]] or [[Tristimulus|tristimulus values]] in [[Video]] or still image systems.

The relationship is called [[Tone Response Curve]].

In [[Cathode Ray Tube|CRT]] displays, the ratio betwen incoming light and output luminance was not linear. So this effect had to be modelled by considering a non-linear curve, which we call gamma. CRT monitors required a gamma of 2.5. To convert the gamma-corrected curve to a linear curve, we just had to apply the inverse gamma, that is 1/2.5.

To present images in a gamma corrected form onto a CRT display, we apply the inverse of the display gamma to the image, and then when the display applies gamma, the result is the linear output we expect.

**Subjective corrections**
There also has to be some subjective corrections to account for the flair (glow) of the monitors, among other things. We might expect the electronics to do this for us, but since we already perform gamma corrections manually, it's also decided that this correction can be easily taken directly into it. This correction has been calculated in the gamma value as supplied by monitor manufacturers.

Instead of providing the physical gamma (2.5), the corrected gamma, say 2.2 was provided to us.