It is a lossy form of compression based on [[Discrete Cosine Transform]].

MIME Types: image/jpeg

Common formats: JPEG/Exif, JPEG/JFIF

# Variants
- Interlaced Progressive JPEG

# Encoding
The general steps involved are:

- Colour Space Conversion (not performed in some highest quality modes)
- Downsampling
	- The ratio at which downsampling is ordinarily done is at either 4:4:4 (no downsampling), 4:2:2 (reduction by a factor of two in the horizontal direction) or 4:2:0 (reduction by a factor of 2 in both the horizontal and vertical directions)
- Block Splitting
	- Each channel is split into 8x8 blocks. Depending on [[Chroma Subsampling]], this yields Minimum Coded Unit (MCU) blocks of size 8x8 (4:4:4), 16x8 (4:2:2) or 16x16 (4:2:0).
- Discrete Fourier Transform
	- Each 8x8 block of each component is converted to a [[frequency domain]] representation, using a normalized, 2D type-II [[Discrete Cosine Transform]] (DCT). 
- Quantization
	- This is the only lossy operation (apart from chroma subsampling)
- Entropy Coding
	- It is a special form of lossless data compression.

### Encoding according to JFIF Standard
- It converts images from [[RGB Colour Model|RGB]] to [[YUV and YCbCr|YCbCr]].
- The resolution of [[Chrominance|chroma]] is reduced by a factor of 2 or 3, by [[Chroma Subsampling]].
- The image is split into blocks of 8x8 pixels and for each block, each of the Y, Cb and Cr data undergoes the [[Discrete Cosine Transform]]. A DCT is similar to a [[Fourier Transform]] in the sence that it produces a kind of spatial frequency spectrum.
- The amplitudes of the frequency components are quantized. Human vision is much more sensitive or small variations in colour or brightness over large areas than to the strength of high-frequency brightness variations. Therefore the magnitudes of the high-frequency components are stored with a lower accuracy than the low-frequency components according to the quality setting (the 0-100 setting in the Independent JPEG Group's library).
- The resulting data for all 8x8 blocks is losslessly compressed with a variant of [[Huffman encoding]].

Decoding process reverses these steps, except the quantization step, which is lossy.