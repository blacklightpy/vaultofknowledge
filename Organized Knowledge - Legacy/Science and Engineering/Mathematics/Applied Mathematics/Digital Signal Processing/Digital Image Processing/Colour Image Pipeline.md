An image pipeline or video pipeline is the set of components commonly used between an image source and and image renderer.

It maybe implemented as software in a digital signal processor, on an FPGA or an ASIC.

# Typical Workflow
- Image Sensor Corrections
	- Debayering
- Noise Reduction
- Image Scaling
- [[Gamma Correction]]
- Image Enhancement
- [[Colour Space]] conversion between [[RGB Colour Spaces|RGB]], [[YUV and YCbCr|YUV]] or [[YUV and YCbCr|YCbCr]]
- Chroma Subsampling
- Framerate Conversion
- Image Compression/Video Compression