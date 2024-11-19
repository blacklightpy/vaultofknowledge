A Colour appearance model (CAM) is a mathematical model that seeks to describe the perceptual aspects of human colour vision, i.e. viewing conditions under which the appearance of a colour does not tally with the corresponding physical measurement of the stimulus source. They are more sophisticated than [[Colour Space|colour spaces]].

This is different from [[Colour Models]] which describe colours as tuples in a coordinate space.

# Phenomena to Capture
- Chromatic adaptation
	- It is the ability of humans to discount a [[White Point]] (or [[Colour Temperature]]) of an illuminating light source when observing a reflecting object. For example, a white paper looks white no matter whether the illumination is blueish or yellowish.
	- This is one of the most basic and most important aspect of all colour appearance phenomena
	- So a chromatic adaptation transform (CAT) that is used to model this behaviour is central to any CAM.
- Hue Appearance
- Contrast appearance
- Colourfulness appearance
- Brightness appearance
- Spatial Phenomena or [[Optical Illusions]]
	- They only affect certain areas of an image, and this has to do with the way the human brain interprets information contextually instead of as raw colours
	- They are hard to model because of their contextuality, and CAMs that try to do this are called [[Image Colour Appearance Models]] (iCAM).
## Implementations
- [[CIELAB]] (Technically a colour space, but it was the first approach to building a CAM)
	- It uses the wrong [[von Kries transform]] by performing it on the [[CIE 1931 XYZ Colour Space|XYZ colour space]] directly instead of changing to the [[LMS Colour Space]] first for more precise results
- Nayatani et al. model
- Hunt model
- RLAB
	- Unlike [[CIELAB]], it uses a proper [[von Kries transform]]
- LLAB
- CIECAM97s (was popular until [[CIECAM02]] arrived)
- IPT (It is well suited for gamut mapping)
- ICtCp (Improves on IPT)
- [[CIECAM02]] (It comes with the CAM02-UCS space)
- iCAM06 (It is an [[Image Colour Appearance Models|iCAM]])
- CAM16 (It also comes with the CAM16-UCS space; not a CIE standard although published by CIE)
- CIECAM16 (The 2022 CIE standard release of CAM16)
- OKLab (Same structure as [[CIELAB]], but fitted with improved data such as CAM16 output for lightness and IPT data for hue; It was meant to be easy to implement and use like CIELAB and IPT where, unlike sRGB)
	- As of December 2022, it is part of the [[CSS colours]] level 4 draft.
