Codec is a portmanteau of coder and decoder. This is analogous to endec in electronic systems which is a portmanteau of encoder and decoder.

Codecs are used to encode audio and video files into standard formats or to decode them for playback or conversion. A multimedia codec library is used to support various different media formats.
## Codecs to use

| Type  | Formats | Open Source Codecs     | Proprietary Codes                                                  |
| ----- | ------- | ---------------------- | ------------------------------------------------------------------ |
| Video | H.264   | x264, OpenH264, FFmpeg | MainConcept, Nero Digital, QuickTime H.264, Sorenson AVC Pro Codec |
| Video | H.265   | x265, FFmpeg           |                                                                    |
| Video | WMV     | FFmpeg                 | Windows Media Video                                                |
| Video | Theora  | libtheora, FFmpeg      |                                                                    |
| Video | VP8     | libvpx, FFmpeg         |                                                                    |
| Video | VP9     | libvpx, FFmpeg         |                                                                    |
| Video | AV1     | libaom                 |                                                                    |
| Audio | MP3     | LAME, FFmpeg           | Fraunhofer L3enc, Fraunhofer MP3enc                                |
| Audio | Vorbis  | libvorbis, FFmpeg      |                                                                    |
| Audio | Opus    | libopus, FFmpeg        |                                                                    |
## Codec Packs
- K-Lite Mega Codec Pack (We mainly need the LAV Filters from it)
- Combined Community Codec Pack (CCCP)
- libavcodec from FFmpeg
- XviD
- DivX (Proprietary)

## Projects
- FFmpeg - A multimedia toolbox (includes several codecs including CCTV and arcane codecs)
- Libav (merged with FFmpeg)
- GStreamer - It's a multimedia framework larger than FFmpeg, used for complex pipelines
	- It internally uses libavcodec from its "gst-libav" (name changed during the libav fork)
- AviSynth - It is a filter based tool for transferring video frames from one application to another without using temporary files, also known as a frameserver. It is used in video post-production workflows for [[Non-Linear Editing]] of videos.
- Apple Quicktime (Proprietary)
### DirectShow Filters
Both below are basically 3rd party DirectShow [[Filters]] based on FFmpeg

- ffdshow, a codec library based on FFmpeg providing DirectShow filters and Video For Windows codecs
	- Discontinued in favour of LAV Filters
- LAV Filters (formerly LAVFSplitter; based on libavcodec and libavformat of FFmpeg)
	- Contains Splitters and Decoders
	- Splitters
		- LAVFSplitter
		- Haali Media Splitter
## Splitters