It is a lossy form of compression based on [[Discrete Cosine Transform]].

MIME Types: image/jpeg

Common formats: JPEG/Exif, JPEG/JFIF

# Encoding
The general steps involved are:
- Colour Space Conversion (not performed in some highest quality modes)
- Downsampling
- Block Splitting
- Discrete Fourier Transform
- Quantization
- Entropy Coding

### According to JFIF Standard
- It converts images from [[RGB Colour Model|RGB]] to [[YUV and YCbCr|YCbCr]].
- The resolution of [[chrominance|chroma]] is reduced by a factor of 2 or 3, by [[chroma subsampling]].
	- The ratio at which downsampling is ordinar
- The image is 

# Variants
- Interlaced Progressive JPEG