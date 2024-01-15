# Homepage
Blacklight OS

Kernel: Linux
Includes: GNU Core Utilities, Musl C Library, Polkit

Cool Features: Features a troubleshooter, powered by Blacklight AI
# Installation (inspired by openSUSE)
## Advanced Installation
### Optional Choices
- [ ] Replace GNU Core Utilities with Toybox? (Blacklight OS uses GNU Core Utilities out of respect for the GNU Project)
	- [ ] Use Busybox instead of Toybox? (If you prefer it for some reason)
- [ ] Include Musl C Library? (With Musl C Library, you can reduce the size of downloaded files by sharing libraries)
- [ ] Exclude Flatpak from installation? (Flatpak is an application store framework, for easily distributing applications without restrictions from specific Linux operating systems. Blacklight OS enables the Flathub repository by default)
### Additional Components
#### Compatibility
- [ ] Enable support for X? (old applications may utilize the X windowing system)
- [ ] Enable support for GNU C Library? (Some 3rd party software may require GNU C Library to load)
- [ ] Enable support for systemd? (Some applications have systemd as a hard dependency, so if you don't use it as your background service manager, Blacklight OS will package it as a separate environment)
#### Proprietary / Legally Grey
- [ ] Include support for proprietary multimedia codecs? (This includes codecs from MPEG-4 like H.264, H.265 and containers like MP4, AAC, etc.)
	- [ ] Use GStreamer instead of FFmpeg? (GStreamer is a complete framework for media processing, while FFmpeg is a library that handles encoding, decoding and conversion of media)
### Interface
- Choose your desktop environment:
	- [ ] Blacklight OS 13
	- [ ] KDE Plasma 6
	- [ ] GNOME 45
	- [ ] Headless Installation (Choose this if you would like to install a custom compositor)

You can install these additional components later from settings.
### Presets
- [ ] Gaming Mode (WINE, Lutris, Steam)
- [ ] Multimedia Editor (Audacity, GNOME Pitivi, KDE Kdenlive, Handbrake, OpenShot)
- [ ] Creative Mode (Ardour, LMMS, )
- [ ] Common Utilities (7-Zip CLI, 7-Zip GUI, GNU Gzip, TAR Archiver)
- [ ] Fancy Programs (xPlorer File Manager)
# Additional System Changes

## Troubleshooter Warning Example

> [!warning]
> Read this warning carefully to understand.
> 
> This program is trying to install itself to /usr/bin.
> 
> Blacklight OS does not use this system layout. Applications are installed to /Programs and Libraries are installed to /Libraries.
> 
> This is a standard Linux style filesystem layout. To install this package properly please modify the references to those directories accordingly. It won't be hard usually.
> 
> **\>** Open this to see the list of affected path declarations, and what you should replace them with.
> 
> Blacklight OS will not let you install packages in this manner via this package manager (unless you hack it). You are however free to 
## GNU Automake Installations
WARNING: This Makefile makes use of the /usr/lib directories. But Blacklight OS stores libraries in /Libraries. Do you want to edit the paths in the Makefile?

Without Setting proper paths in the Makefile, 
### Settings Options
- [ ] Suppress warnings for these issues (dangerous)
- 