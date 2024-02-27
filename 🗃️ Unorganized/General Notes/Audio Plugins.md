Audio Plugins are used to provide additional audio-related functionality to a computer program. It may include audio effects or [[virtual instruments|instruments]] (synthesizers and [[samplers]]).

Plugin > Instances (Loader) > Plugin Host (DAW Interface)
# Plugin Architectures
## Free Software
- VST2/VST3 (Virtual Studio Technology)
- LADSPA (Linux Audio Developer's Sample Plugin API)
- LV2 (LADSPA V2)
- DSSI (Disposable Soft Synth Interface)
- Vamp
## Nonfree Software
- Apple Audio Units
- DirectX Plugin
## Features
### Free

| Plugin | GUI | Effects | Instruments | Platforms           |
| ------ | --- | ------- | ----------- | ------------------- |
| VST    | No  | Yes     | Yes         | Linux/macOS/Windows |
| LADSPA | Yes | No      | Yes         | Linux/macOS/Windows |
| LV2    | Yes | Yes     | Yes         | Linux/macOS/Windows |
| DSSI   | Yes | Yes     | Yes         | Linux/macOS/Windows |
| Vamp   | No  | No      | No          | Linux/macOS/Windows |
Note: Vamp is used for analysis (like DSP)
### Nonfree

| Plugin            | GUI | Effects | Synthesis | Platforms |
| ----------------- | --- | ------- | --------- | --------- |
| Apple Audio Units |     |         |           | Apple     |
| DirectX Plugin    |     |         |           | Windows   |
