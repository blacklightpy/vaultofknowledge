An image pipeline or video pipeline is the set of components commonly used between an image source and and image renderer.

It maybe implemented as software in a digital signal processor, on an FPGA or an ASIC.

# Typical Workflow
- Image Sensor Corrections
	- Debayering
- Noise Reduction
- Image Scaling
- [[../../../../../Creativity and Arts/Colour Theory/Working with Colours/Gamma Correction]]
- Image Enhancement
- [[../../../../../Creativity and Arts/Colour Theory/Colour Modelling/Colour Spaces/Colour Space]] conversion between [[../../../../../Creativity and Arts/Colour Theory/Colour Modelling/Colour Spaces/RGB Colour Spaces|RGB]], [[../../../../../Creativity and Arts/Colour Theory/Colour Modelling/Colour Spaces/YUV and YCbCr|YUV]] or [[../../../../../Creativity and Arts/Colour Theory/Colour Modelling/Colour Spaces/YUV and YCbCr|YCbCr]]
- Chroma Subsampling
- Framerate Conversion
- Image Compression/Video Compression