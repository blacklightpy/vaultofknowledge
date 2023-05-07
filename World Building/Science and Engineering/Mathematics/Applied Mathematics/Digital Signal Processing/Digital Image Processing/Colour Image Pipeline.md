An image pipeline or video pipeline is the set of components commonly used between an image source and and image renderer.

It maybe implemented as software in a digital signal processor, on an FPGA or an ASIC.

# Typical Workflow
- Image Sensor Corrections
	- Debayering
- Noise Reduction
- Image Scaling
- [Gamma Correction](Gamma%20Correction.md)
- Image Enhancement
- [Colour Space](Colour%20Space.md) conversion between [RGB](RGB%20Colour%20Spaces.md), [YUV](YUV%20and%20YCbCr.md) or [YCbCr](YUV%20and%20YCbCr.md)
- Chroma Subsampling
- Framerate Conversion
- Image Compression/Video Compression