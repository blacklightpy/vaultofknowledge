# Hardware
- Analog Pocket
# Software
An emulator system consists of two parts: the emulator cores, and the frontend. These can either be separate projects, or be part of the same project. 

Combinations of cores and frontends can be distributed either as programs running on an OS, or as a dedicated OS of its own.

That said, here are the options available (mostly focused only on Linux):
## Emulator Cores
- DOSBox
## Emulator Core Formats
- libretro
## Emulator Frontends
- Launchbox <span style="color:lightblue">[PROPRIETARY]</span>
- Playnite
- Pegasus
- EmulationStation
- ES-DE, a maintained fork of RetroPie's fork of EmulationStation
## Emulator Core Distributions (Programs)
### libretro Specific
- RetroArch, the official libretro distribution with its own frontend
### Generic
- EmuDeck, a script that sets up a bunch of emulators and installs either ES-DE or Pegasus as the frontend.
- RetroDECK, a Flatpak application that uses the ES-DE frontend and comes with several emulators.
- Retrobat, a Windows application that uses a fork of Batocera's EmulationStation frontend
## Emulator Core Distributions (OS)
### libretro Specific
- LudoOS, a minimal libretro frontend.
### Generic
- RetroPie is a gaming dedicated OS inspired by RetroArch for Raspberry Pi SBCs, that comes with a fork of EmulationStation as the graphical frontend
- Batocera Linux is a gaming dedicated OS distribution that uses a fork of the old EmulationStation frontend
- Lakka is a gaming dedicated OS distribution that uses XcrossMediaBar (XMB) as its frontend
- Recalbox <span style="color:lightblue">[PROPRIETARY]</span>