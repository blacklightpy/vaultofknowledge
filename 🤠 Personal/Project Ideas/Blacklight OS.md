# Homepage
Blacklight OS

Kernel: Linux
Includes: GNU Core Utilities, Musl C Library, Polkit
# Installation
## Optional Choices
- [ ] Replace GNU Core Utilities with Toybox?
	- [ ] Use Busybox instead of Toybox? (If you prefer it for some reason)
- [ ] Include Musl C Library? (With Musl C Library, you can reduce the size of downloaded files by sharing libraries)
## Additional Components
- [ ] Enable support for X? (old applications may utilize the X windowing system)
- [ ] Enable support for GNU C Library? (Some 3rd party software may require GNU C Library to load)
- [ ] Enable support for systemd? (Some applications have systemd as a hard dependency, so if you don't use it as your background service manager, Blacklight OS will package it as a separate environment)

- Choose your desktop environment:
	- [ ] Blacklight OS 13
	- [ ] KDE Plasma 6
	- [ ] GNOME 45
	- [ ] Headless Installation (Choose this if you would like to install a custom Wayland compositor)

You can install these additional components later from settings.



# Additional System Changes
## GNU Automake Installations
WARNING: This Makefile makes use of the /usr/lib directories. But Blacklight OS stores libraries in /Libraries. Do you want to edit the paths in the Makefile?

Without Setting proper locations for libraries in the Makefile, 

### Settings Options
- [ ] Suppress warnings for these issues (dangerous)
- 