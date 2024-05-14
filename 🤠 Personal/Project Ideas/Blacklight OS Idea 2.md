> I'm going to assert that my OS owns these apps.
> That is the spirit of free software.
> All I care about is providing a highly opinionated implementation.

I will call in an operating environment distribution, rather than an OS.

For Launcher, use the Nokia model where you set one app as default, and the others just get their specific names.
An alternatives manager can change the default values.
# System Information

- Bootloader
	- Bootloader: rEFInd
	- Theme: (Choose a Theme)
- Kernel: Linux
	- Memory Management
	- Process Scheduling
	- Firewall Backend
- Core Userspace
	- System API: GNU C Library
	- Firewall Manager: nftables / UFW
	- Service Manager: Runit
	- X Windowing System Support Layer: XWayland
- System Services
	- User Session Manager: elogind
	- mDNS Service: Avahi
	- DHCP Client Service: dhcpcd
	- Wi-Fi Service: Network Manager
	- Bluetooth Service: BluetoothHD
	- Android Service: Waydroid
	- Podman API: Podman
	- Podman Docker API: Podman-Docker
	- Emulator API: libvirtd
	- System Logging: nanoklogd
	- Power Management: TLP
	- Power Profiles Management: Power Profiles Daemon
	- SMB File Sharing Protocol: smbd
	- Plug And Play Devices: udevd
	- Access Control: Polkitd
	- Logging: nanoklogd (Custom)
- System Libraries
	- Plain Fonts: Ubuntu
	- Colour Fonts: Noto
	- Symbolic Fonts: Nerd Fonts
	- User Space IPC: D-Bus
	- XDG Desktop Portal: XDP-GNOME
	- Media Codecs: FFmpeg
- Graphical Userspace
	- Wayland Compositor: KWin
	- Graphical Environment: KDE Plasma
- Customization
	- Theme Pack (Use a Kvantum Theme)
		- Widget Pack
		- Animations
		- Widget Styles
		- Colour Scheme
		- Sound Scheme
	- Default Wallpapers
	- Sample Music
	- Sample Pictures
	- Sample Videos
	- Screen Savers
- Default Software
	- Utilities
		- C Compiler: GNU GCC
		- C++ Compiler: GNU G++
		- Debugger: GNU GDB
		- Software Center: Portal (KDE Discover + AppImageHub fork)
		- Task Manager: System Monitor (Custom App)
		- Settings Manager: Settings (Custom App, something like YaST2)
		- Alternatives Manager: Software Alternatives (Select Default Software for each category)
		- Library Manager: Library Manager (Custom App, something like Synaptic or Octo)
		- Driver Manager: (Custom App)
		- Partition Manager: GParted
		- Backup Manager: Timeshift
		- Emulator: Virt-manager
	- Command Line Packages
		- Modal Text Editor: Helix
		- System Information: Neofetch
		- Media Player: MPV Media Player
		- File Manager: lf
		- Archive Manager (TAR): GNU Tar
		- Archive Manager (7z and RAR): 7-Zip
		- Archive Manager (ZIP): Info-ZIP Unzip
	- Accessories
		- Media Player: VLC Media Player
		- Web Browser: Mozilla Firefox (with PWA Addon)
		- File Manager: Dolphin
		- Terminal Emulator: Alacritty
		- Graphical Text Editor: GNOME Text Editor
		- Code Editor: Pulsar Edit
		- Phone Integration: Phone Connect (Custom App, a fork of KDE Connect)
		- OS Tour: Tour (Custom App)
	- Proprietary Software
		- Game Center: Steam
		- Music Streaming Service: Spotify
		- Video Streaming Service: Netflix (PWA)
	- Sample Software
		- GNU Radio
	- User Installed Programs
		- Anything Else Goes