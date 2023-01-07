It is a lossy form of compression based on [[Discrete Cosine Transform]].

MIME Types: image/jpeg

Common formats: JPEG/Exif, JPEG/JFIF

# Encoding
The general steps involved are:
- Colour Space Conversion (not performed in some highest quality modes)
- Downsampling
	- The ratio at which downsampling is ordinarily done is at either 4:4:4 (no downsampling), 4:2:2 (reduction by a factor of two in the horizontal direction) or 4:2:0 (reduction by a factor of 2 in both the horizontal and vertical directions)
- Block Splitting
	- Each channel is split into 8x8 blocks
- Discrete Fourier Transform
- Quantization
- Entropy Coding

### According to JFIF Standard
- It converts images from [[RGB Colour Model|RGB]] to [[YUV and YCbCr|YCbCr]].
- The resolution of [[chrominance|chroma]] is reduced by a factor of 2 or 3, by [[chroma subsampling]].
- The image is split into blocks depending on the level of subsampling

# Variants
- Interlaced Progressive JPEG