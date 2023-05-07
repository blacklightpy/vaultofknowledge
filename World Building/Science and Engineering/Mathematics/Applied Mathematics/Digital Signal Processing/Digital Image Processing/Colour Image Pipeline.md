An image pipeline or video pipeline is the set of components commonly used between an image source and and image renderer.

It maybe implemented as software in a digital signal processor, on an FPGA or an ASIC.

# Typical Workflow
- Image Sensor Corrections
	- Debayering
- Noise Reduction
- Image Scaling
- [Gamma Correction](../../../../../Creativity%20and%20Arts/Colour%20Theory/Working%20with%20Colours/Gamma%20Correction.md)
- Image Enhancement
- [Colour Space](../../../../../Creativity%20and%20Arts/Colour%20Theory/Colour%20Modelling/Colour%20Spaces/Colour%20Space.md) conversion between [RGB](../../../../../Creativity%20and%20Arts/Colour%20Theory/Colour%20Modelling/Colour%20Spaces/RGB%20Colour%20Spaces.md), [YUV](../../../../../Creativity%20and%20Arts/Colour%20Theory/Colour%20Modelling/Colour%20Spaces/YUV%20and%20YCbCr.md) or [YCbCr](../../../../../Creativity%20and%20Arts/Colour%20Theory/Colour%20Modelling/Colour%20Spaces/YUV%20and%20YCbCr.md)
- Chroma Subsampling
- Framerate Conversion
- Image Compression/Video Compression