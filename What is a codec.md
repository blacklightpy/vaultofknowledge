Codec is a portmanteau of coder and decoder. This is analogous to endec in electronic systems which is a portmanteau of encoder and decoder.

Codecs are used to encode video files into standard formats or to decode them for playback or conversion. A multimedia codec library is used to support various different video formats.

## Codecs to use

| Type  | Open Source                       | Proprietary       |
| ----- | --------------------------------- | ----------------- |
| Video | VP8, Theora, x264, x265, OpenH264 | H.264, H.265, VP9 | 
| Audio | OGG, Opus                         | LAME              |

## Codec Packs

- K-Lite Mega Codec Pack
- Combined Community Codec Pack (CCCP)
- libavcodec from FFmpeg
- XviD
- DivX (Proprietary)

## Projects
- FFmpeg
- Libav (merged with FFmpeg)
- GStreamer - It's a multimedia framework larger than FFmpeg, used for complex pipelines
	- It internally uses libavcodec from its "gst-libav" (name changed during the libav fork)
- Apple Quicktime (Proprietary)
- 

## Decoders
- ffdshow by FFMPEG
- LAV Filter / LAVFSplitter (based on libavcodec and libavformat of FFMPEG) - DirectShow filters for media players
	- Contains Splitter and Decoder
	- Splitters
		- LAVFSplitter
		- Haali Media Splitter

## Splitters