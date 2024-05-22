
# Format

```

// "color" will be autopicked, so only specify "icon"

Name [color: color-id] {

	Sub-Item Name [icon: icon-id] {

		...
		
	}
}

```

```
Item1 > Item2
...
```

# Attempt (Categorization)

- **Kernel**
	- **Processing Functions**
		- **CPU Related**
	- **Memory Functions**
		- **Memory Related**
	- **Storage Functions**
		- **Storage Related**
	- **Networking Functions**
		- **Network Related**
	- **System Functions**
		- **I/O Ports Related**
	- **Human Interface Functions**
		- **I/O Devices Related**

- Some Kernel Systems
	- ALSA (Kernel Sound System)
	- netfilter (Kernel Firewall System)
	- DRM/KMS (Kernel Display System)

# Userspace

### Motherboard Firmware and Boot Stage

- Motherboard
	- Firmware (BIOS / UEFI)

- Bootup
	- UEFI/BIOS Boot Manager
	- Kernel
	- initramfs

### Init Stage

- Kernel Modules

- Boot Splash
	- e.g. Plymouth

- Init System
	- e.g. Runit
- Service Management
	- Service Manager
		- e.g. Runit
	- Installed Services / Daemons
		- e.g.
			- Time Synchronization Service (NTP Daemon / ntpd)
			- Bluetooth Scanner Service (Bluetooth Daemon / bluetoothd)
			- Wi-Fi Scanner Service (NetworkManager Service / NetworkManager)
			- User Space Inter-Process Communication Service (D-Bus Service / dbus)
			- IP Addressing Service (DHCP Client Service / dhcpcd)
			- Logging Service (socklog-void Service (Void Linux specific) / socklog-unix + nanoklogd)
			- Power Profile Management Service (Power Profiles Daemon from UPower / power-profiles-daemon)
			- Plug and Play Device Service (udevd from systemd / eudevd, forked from systemd-udevd)
			- User Seat and Session Manager Service (logind from systemd / elogind, forked from systemd-logind)
			- Display Manager Service (LightDM / lightdm)

### File System and Programs

- Root File System (/) [Follows the Filesystem Hierarchy Standard (FHS) from the Linux Standard Base (LSB) project]
	- Populated At Boot
		- dev (Devices)
		- proc (Processes)
		- run (Runtime Data Folder)
		- tmp (Temporary Files Folder)
		- sys (I/O Devices)
	- Persistent
		- boot (Boot Files)
		- usr (Userland (Software))
		- etc (System-Wide Configurations)
		- var (Variable Storage (Program Data))
		- srv (Dedicated Server Folder (optional))
		- opt (Optional Storage (For manual installations))
		- mnt (Default Mount Directory)
		- home (Users' Home)
		- root (Root Home)
	- Other Folders
		- `/bin`, `/sbin`, etc. are now links to `/usr/bin`
		- `/lib`, `/lib32` and `/lib64` now link to `/usr/lib`

- System C Library
	- e.g. GNU C Library

- System Utilities
	- e.g.
		- GNU Core Utilities
		- GNU Binary Utilities
		- util-linux

- Firewall
	- Low Level CLI
		- e.g.
			- `nftables` (Newer de-facto tool)
	- High Level CLI
		- e.g.
			- `firewalld` (Supports `iptables` and `nftables`)
	- GUI
		- e.g.
			- `firewall-gui` (Frontend for `firewalld`)

- Sound Mixer
	- e.g. PipeWire (`pipewire`)

- Command Shell
	- e.g. GNU Bash (`bash`)

### Display Manager
> A login manager or display manager handles the login screen, and the screen during logout, instead of falling back to the Virtual Console or TTY. The visual part of the login manager is called its greeter, and some display managers let you customize it to let you have the design you want.

- Login Manager / Display Manager
	- e.g. LightDM

### Graphical Environment
> - Graphical Environment
> 	- A graphical environment would consist of a **window manager**, which draws program windows, a **compositing manager** which handles any special effects with regards to the windows, such as animations, blur, etc., and other noticeable components such as the **status bar or task bar**, **app launcher** and any other widgets.
> 	- If the **window manager** also consists of a **compositing manager**, it is then called a **compositing window manager** or **compositor**.
> 	- If a project comes with a **window manager** or **compositor** bundled with a **status bar**, **app launcher** and any other widgets, then it is called a **desktop environment**.
> 	- A graphical environment also needs to have protocol for applications to communicate with the window manager and for the window manager to communicate with the kernel.
> 
> - Graphical Environment Protocols
> 	- There are two major displaying protocols for desktop, namely the old **X Windowing System v11 Rev.7**, or **X11**, or **X**, and the newer **Wayland** protocol. There was also **Mir** by Canonical, but it did not gain any adoption.
> 	- **X** was a client-server protocol where the **window manager** or **compositor** would be **X** clients just like other programs, with the **window manager** or **compositor** having exclusive access to the background **X Server**, the main implementation for which was by the X.Org Foundation, namely the **X.Org X Server**.
> 	- **Wayland** is too a client-server protocol, but one where the **window manager** also implements compositing and the **Wayland Server**, and they are thus called **compositors**, or **Wayland compositors** for clarity.
> 	- **Wayland compositors** can handle legacy **X** clients using the **XWayland** compatibility layer.
>
> - Additional Styling
> 	- Not to mention, we can use **font packs**, **icon packs or icon themes**, **colour schemes or colour themes**, and even apply **sound schemes or sound themes**, although that's not as widespread these days.
> 	- **GTK+** and **Qt** are the main GUI frameworks for desktop operating systems. Applications based on them derive their widget styles from the active **GTK+ theme** or **Qt theme** in the system respectively.
> 	- Some window managers (or compositors) like KDE Plasma's KWin allow theming the **window decorations** using a theme engine, which for KWin is Aurorae.
> 	- Last but not the least, **desktop wallpapers** matter :D

- Type of Window Managers
	- Manual Tiling Window Managers
	- Stacking/Floating Window Managers
	- Dynamic Tiling Window Managers

- Manual Tiling Window Managers
	- List
- Dynamic Tiling Window Managers
	- List
- Stacking/Floating Window Managers
	- List
- Status Bars
	- List
- App Launchers
	- List
- Desktop Widget Frameworks
	- List

- Desktop Environments
	- List
	- e.g. GNOME
		- Wayland Compositor
		- Status Bar
		- Launcher
		- Widgets

### Package Manager

> - Package Manager
> 	- Every distribution is opinionated in its own ways regarding how software is packaged.
> 	- This has to do with how distributions originated with different sets of base software, requiring different names for the base packages, alongside their design decisions for maintaining packages and providing a certain experience to the users (such as naming development headers for a program as `pkg-devel` or `libpkg-dev`, or bundle them with `pkg`).
> 	- So, every base distribution typically comes with their own **package format** and hence a **package installer** and **package manager**, unless they share common ideologies. Even then, the package names, and sometimes even the **package manager** would be different, with only the **package format** and the **package installer** being the same. Derivatives of a distribution tend to keep the same **package manager** and package names for the most part, but the versions of packages would vary, and there may be more packages than what the base distribution has.
> 	- A simple **package installer** would simply install the contents of a package file, provided it does not conflict with any installed packages. But a **package manager** would connect to the software repositories configured in the system and install any package and any missing dependencies as well. It would likely make use of the **package installer** to carry out the installations of packages received from the repository.
> 	- The **package manager** will also have security systems in place to verify file integrity during transit, by signing the packages.
> 
> - Sandboxes and Containers
> 	- The native package managers in any system tend to package software in such a way that programs depend on other programs in the repository, mostly to reduce duplication, for storage efficiency reasons.
> 	- Also, for this reason, specific releases of a distribution tend to package only one version of packages, which would be the latest version at the time of the distribution's release, and put the binaries of all programs in a single folder, and shared libraries in another folder, and so on. This also saves the trouble of having to register every software's binary install location into the `PATH` variable so you can easily access installed programs from the command line, which is a very useful tool in free software systems for their powerful capabilities.
> 	- Since software is not installed in separate folders, we cannot have multiple versions of a package installed at the same time, as it would overwrite the files of the other version. This is generally not an issue as distributions package versions that are best suited for the user, however, for whatever reason, you may want to have a different version of certain software that what's packaged. Perhaps you want to have a newer version of a program, but the distribution only makes newer releases every six months, unlike rolling release distributions.
> 	- If you constantly need the latest packages, switching to a rolling release distribution would be best. However, for occasional packages, you either need to find a third party repository that provides the package (if you don't want to have the distribution's version), install it somewhere separately if you find a pre-packaged binary, build it from source if it's a lightweight program and you have the right computing power and time, or you can use a sandboxed package manager or container.
> 	- Sandboxed package managers install packages and any of their dependencies in a separate location from the system, in its own folder structure, which allows installation of multiple versions of packages.
> 	- Containers are usually used for production purposes, but can fulfil the same purpose. They allow you to run a set of packages in isolation from the system, and port the entire system as an image that you can run on other machines.
> 	- Containers are essentially the thing as sandboxes, but they tend to be broader scoped than sandboxes, which are usually cross-platform, while containers generally tend to contain a minimal userspace of distributions including their package managers to leverage their package ecosystem.
> 	- Also, containers are different from virtual machines as they are mistakenly understood, because they do not make use of virtualization, since they are simply programs that run in a space isolated from the rest of the system. But containers also provide features like RAM and CPU restriction, etc.

 > When we are speaking about containers, we are usually referring to the Open Container Infrastructure (OCI) standard for container images, distribution and runtimes, which was formed based on the container implementation by the Docker project.

- Package Management
	- Native Package Installer
		- e.g.
			- dpkg (used in Debian)
			- RPM (used in Fedora)
			- pacman (used in Arch)
	- Native Package Manager
		- e.g.
			- APT (used in Debian)
			- DNF (used in Fedora, based on YellowDog Linux's YUM)
			- pacman (used in Arch, same as it's package installer)
	- Sandboxed Package Manager
		- e.g.
			- Flatpak
			- Nix
	- Containers

### Packages
- Shared Libraries
	- e.g.
		- System C Library (GNU C Library, already mentioned)
		- GTK+ Library
		- zlib Library
		- 3D Graphics Library (Mesa 3D)

- Graphical Environment Utilities
	- e.g.
		- Authentication Service (Polkit, already mentioned in Services)
		- Authentication Frontend (Polkit KDE Agent / `polkit-kde-agent`)
		- Userland IPC (D-Bus, already mentioned in Services)

- Graphical Environment Configuration Tools
	- e.g.
		- GTK+ Configuration Tool (nwg-Look / `nwg-look`)
		- Qt Configuration Tool (`qt5ct`/`qt6ct`)
		- Kvantum Theme Manager for Qt (`kvantummanager`)

- Utility Programs
	- e.g.
		- Web Browser (Firefox / `firefox`)
		- Media Player (VLC / `vlc`)
		- E-Mail Client (Thunderbird / `thunderbird`)

- Console Accessories
	- e.g.
		- Terminal (Alacritty / `alacritty`)
		- Modal Text Editor (Helix / `hx`)
		- Terminal File Manager (lf / `lf`)
		- Media Player (MPV / `mpv`)
		- Music Player (ncurses Music Player / `ncmpcpp`)
		- Archiver (GNU TAR / `tar`)
		- Archiver (Unzip / `unzip`)
		- Archiver (7-Zip / `7z`)

- Common Developer Tools
	- Build Essentials
		- C/C++ Toolchain (GNU GCC / `gcc` + g`++`)
		- Build System (GNU Make / `make`)
		- Build System Script Generator (GNU Autotools / `autoconf` + `automake`)
	- Optionally:
		- Debugger (GNU GDB / `gdb`)
		- CMake Build System (`cmake`)
		- Python 3 Toolchain (`python3`)
		- Git Version Control System (`git`)
		- Any Other Language’s Toolchains (Go, Rust, etc.)

### Alternatives
- Alternatives	
	- Shell
		- ZSH (`zsh`) | Korn Shell (`ksh`) | Fish (`fish`) | NuShell (`nushell`) | Microsoft PowerShell (`pwsh`)
	- Init System: 
		- systemd | OpenRC | SysVInit
	- System Core Utilities
		- Busybox | Toybox | rust-coreutils
	- Firewall
		- Low Level CLI
			- `iptables` (older de-facto CLI tool)
		- High Level CLI
			- `ufw` (Supports only `iptables`)
		- High Level GUI
			- `gufw` (Frontend for `ufw`)
	- Sound Mixer
		- ALSA-dmix | PulseAudio | JACK
	- C Library
		- Musl C Library
	- Login Manager
		- GDM | SDDM | XDM
	- Greeter
		- *many LightDM Greeters*
	- Display Protocols
		- X11 | Mir
	- Window Managers
		- *many*
	- Status Bars
		- *many*
	- Launchers
		- *many*
	- Widgets
		- *many*
	- Icon Packs
		- *many*
	- GTK Themes
		- *many*
	- Qt Themes
		- *many*		
	- Generic Program Customizations
		- *wildly many*
	- Generic Program Alternatives
		- *wildly many*
	- C/C++ Compiler
		- Clang + LLVM

### Standards
- Freedesktop.org Standards and Software
	- Specifications
		- XDG Window Manager Spec (formerly called EWMH Spec) | XDG Icon Theme Spec
		- XDG Icon Theme Naming Spec | XDG Sound Theme Spec | XDG Sound Theme Naming Spec
		- XDG System Tray Spec | XDG MPRIS Spec (Music Player Notification Controls, based on D-Bus)
		- XDG MIME Apps Spec (Default Apps) | XDG Desktop Entry Spec (App Shortcuts (.desktop files))
		- XDG Menu Spec (App Launcher Menu) | XDG Autostart Spec (Startup Apps)
		- XDG Base Directories Spec (Standard Paths) | XDG Trash Spec | XDG File Manager D-Bus Interface
		- XDG Thumbnails Spec | XDG Clipboard Spec | XDG Clipboard Extensions Spec
		- D-Bus (User-Space Inter-process Communications)
	- Software
		- AccountService | D-Bus | Polkit | NetworkManager | Upower | Desktop File Utils
		- Shared MIME Info (MIME type collection) | XDG Utils | Cairo (Drawing Library)
		- Mesa3D (Graphics API Impelementation) | Noveau (NVIDIA Open Source Driver)
		- Pixman (Low Level 2D Pixel Manipulation Library) | Plymouth (Boot Splash)
		- Wayland (Current Display Protocol – Core Library) | X.Org (Old Display Protocol – Libraries and X Server)
		- Gstreamer (Multimedia Framework) | Fontconfig (Font Access Library)
		- FreeType (TrueType Font Rendering Library) | Libinput (Library for Input Device Handling)
		- pkg-config (Build System Package Identification) | PulseAudio (Sound Mixer)
		- PipeWire (Sound Mixer with low-latency driver, replacing both PulseAudio and JACK)
	- Software Formerly Hosted on Freedesktop.org:
		- AppStream (App Metadata) | at-spi2  (Accessibility Framework) | Avahi (Multicast DNS)
		- Flatpak | HarfBuzz (OpenType Font Layout Engine) | LibreOffice | PackageKit
		- systemd (Full System Manager) | UDisks (Storage Management)

# Attempt (Code)

I made all notes into comments, and there are no icons yet. Still, I observed that Eraser.io did not render some blocks correctly, despite me accounting for any syntax errors.

```

directon down

Kernel {
	Processing Functions {
		CPU Related
	}
	Memory Functions {
		Memory Related
	}
	Storage Functions {
		Storage Related
	}
	Networking Functions {
		Network Related
	}
	System Functions {
		"I/O Ports Related"
	}
	Human Interface Functions {
		"I/O Devices Related"
	}
}

Some Kernel Systems {
	ALSA {
    Kernel Sound System
	}
	netfilter {
    Kernel Firewall System
	}
	"DRM/KMS" {
    Kernel Display System
	}
}

// Userspace

// Motherboard Firmware and Boot Stage

Motherboard {
	"Firmware (BIOS / UEFI)"
}

Bootup {
	"UEFI/BIOS Boot Manager"
	Kernel
	initramfs
}

// Init Stage

Kernel Modules

Boot Splash {
	e.g. Plymouth
}

Init System {
	e.g. Runit
}

Service Management {
	e.g. Runit
	"Installed Services / Daemons" {
		"e.g. Time Synchronization Service (NTP Daemon / ntpd)"
		"e.g. Bluetooth Scanner Service (Bluetooth Daemon / bluetoothd)"
		"e.g. Wi-Fi Scanner Service (NetworkManager Service / NetworkManager)"
		"e.g. User Space Inter-Process Communication Service (D-Bus Service / dbus)"
		"e.g. IP Addressing Service (DHCP Client Service / dhcpcd)"
		"e.g. Logging Service (socklog-void Service (Void Linux specific) / socklog-unix + nanoklogd)"
		"e.g. Power Profile Management Service (Power Profiles Daemon from UPower / power-profiles-daemon)"
		"e.g. Plug and Play Device Service (udevd from systemd / eudevd, forked from systemd-udevd)"
		"e.g. User Seat and Session Manager Service (logind from systemd / elogind, forked from systemd-logind)"
		"e.g. Login Manager Service (LightDM / lightdm)"
	}
}

// File System and Programs

// The Root File System follows the Filesystem Hierarchy Standard (FHS) from the Linux Standard Base (LSB) project

"Root File System (/)" {
	Populated At Boot {
		dev (Devices)
		proc (Processes)
		run (Runtime Data Folder)
		tmp (Temporary Files Folder)
		"sys (I/O Devices)"
	}
	Persistent {
		boot (Boot Files)
		usr (Userland (Software))
		etc (System-Wide Configurations)
		var (Variable Storage (Program Data))
		srv (Dedicated Server Folder (optional))
		opt (Optional Storage (For manual installations))
		mnt (Default Mount Directory)
		home (Users' Home)
		root (Root Home)
	}
	Other Folders {
		"'/bin', '/sbin', etc. are now links to '/usr/bin'"
		"'/lib', '/lib32' and '/lib64' now link to '/usr/lib'"
	}
}

System C Library {
	e.g. GNU C Library
}

System Utilities {
	e.g. GNU Core Utilities
	e.g. GNU Binary Utilities
	e.g. util-linux
}

Firewall {
	Low Level CLI {
		e.g. 'nftables' (Newer de-facto tool)
	}
	High Level CLI {
		e.g. 'firewalld' (Supports 'iptables' and 'nftables')
	}
	GUI {
		e.g. 'firewall-gui' (Frontend for 'firewalld')
	}
}

Sound Mixer {
	e.g. PipeWire ('pipewire')
}

Command Shell {
	e.g. GNU Bash ('bash')
}

// A login manager or display manager handles the login screen, and the screen during logout, instead of falling back to the Virtual Console or TTY. The visual part of the login manager is called its greeter, and some display managers let you customize it to let you have the design you want.

"Login Manager / Display Manager" {
	e.g. LightDM
}

// Graphical Environment
// 	A graphical environment would consist of a window manager, which draws program windows, a compositing manager which handles any special effects with regards to the windows, such as animations, blur, etc., and other noticeable components such as the status bar or task bar, app launcher and any other widgets.
// 	If the window manager also consists of a compositing manager, it is then called a compositing window manager or compositor.
// 	If a project comes with a window manager or compositor bundled with a status bar, app launcher and any other widgets, then it is called a desktop environment.
// 	A graphical environment also needs to have protocol for applications to communicate with the window manager and for the window manager to communicate with the kernel.
//
// Graphical Environment Protocols
// 	There are two major displaying protocols for desktop, namely the old X Windowing System v11 Rev.7, or X11, or X, and the newer Wayland protocol. There was also Mir by Canonical, but it did not gain any adoption.
// 	X was a client-server protocol where the window manager or compositor would be X clients just like other programs, with the window manager or compositor having exclusive access to the background X Server, the main implementation for which was by the X.Org Foundation, namely the X.Org X Server.
// 	Wayland is too a client-server protocol, but one where the window manager also implements compositing and the Wayland Server, and they are thus called compositors, or Wayland compositors for clarity.
// 	Wayland compositors can handle legacy X clients using the XWayland compatibility layer.

Type of Window Managers {
	Manual Tiling Window Managers
	"Stacking/Floating Window Managers"
	Dynamic Tiling Window Managers
}

Manual Tiling Window Managers {
	List
}
Dynamic Tiling Window Managers {
	List
}
"Stacking/Floating Window Managers" {
	List
}
Status Bars {
	List
}
App Launchers {
	List
}
Desktop Widget Frameworks {
	List
}

Desktop Environments {
	List
	e.g. GNOME {
		Wayland Compositor {
			Mutter
	    }
		Status Bar {
			GNOME Shell
	    }
		Launcher {
			GNOME Shell
	    }
		Widgets {
			GNOME Shell + GNOME Shell Extensions
		}
	}
}

// Package Manager
// 	Every distribution is opinionated in its own ways regarding how software is packaged.
// 	This has to do with how distributions originated with different sets of base software, requiring different names for the base packages, alongside their design decisions for maintaining packages and providing a certain experience to the users (such as naming development headers for a program as 'pkg-devel' or 'libpkg-dev', or bundle them with 'pkg').
// 	So, every base distribution typically comes with their own package format and hence a package installer and package manager, unless they share common ideologies. Even then, the package names, and sometimes even the package manager would be different, with only the package format and the package installer being the same. Derivatives of a distribution tend to keep the same package manager and package names for the most part, but the versions of packages would vary, and there may be more packages than what the base distribution has.
// 	A simple package installer would simply install the contents of a package file, provided it does not conflict with any installed packages. But a package manager would connect to the software repositories configured in the system and install any package and any missing dependencies as well. It would likely make use of the package installer to carry out the installations of packages received from the repository.
// 	The package manager will also have security systems in place to verify file integrity during transit, by signing the packages.
//
// Sandboxes and Containers
// 	The native package managers in any system tend to package software in such a way that programs depend on other programs in the repository, mostly to reduce duplication, for storage efficiency reasons.
// 	Also, for this reason, specific releases of a distribution tend to package only one version of packages, which would be the latest version at the time of the distribution's release, and put the binaries of all programs in a single folder, and shared libraries in another folder, and so on. This also saves the trouble of having to register every software's binary install location into the 'PATH' variable so you can easily access installed programs from the command line, which is a very useful tool in free software systems for their powerful capabilities.
// 	Since software is not installed in separate folders, we cannot have multiple versions of a package installed at the same time, as it would overwrite the files of the other version. This is generally not an issue as distributions package versions that are best suited for the user, however, for whatever reason, you may want to have a different version of certain software that what's packaged. Perhaps you want to have a newer version of a program, but the distribution only makes newer releases every six months, unlike rolling release distributions.
// 	If you constantly need the latest packages, switching to a rolling release distribution would be best. However, for occasional packages, you either need to find a third party repository that provides the package (if you don't want to have the distribution's version), install it somewhere separately if you find a pre-packaged binary, build it from source if it's a lightweight program and you have the right computing power and time, or you can use a sandboxed package manager or container.
// 	Sandboxed package managers install packages and any of their dependencies in a separate location from the system, in its own folder structure, which allows installation of multiple versions of packages.
// 	Containers are usually used for production purposes, but can fulfil the same purpose. They allow you to run a set of packages in isolation from the system, and port the entire system as an image that you can run on other machines.
// 	Containers are essentially the thing as sandboxes, but they tend to be broader scoped than sandboxes, which are usually cross-platform, while containers generally tend to contain a minimal userspace of distributions including their package managers to leverage their package ecosystem.
// 	Also, containers are different from virtual machines as they are mistakenly understood, because they do not make use of virtualization, since they are simply programs that run in a space isolated from the rest of the system. But containers also provide features like RAM and CPU restriction, etc.

// When we are speaking about containers, we are usually referring to the Open Container Infrastructure (OCI) standard for container images, distribution and runtimes, which was formed based on the container implementation by the Docker project.

Package Management {
	Native Package Installer {
		e.g. dpkg (used in Debian)
		e.g. RPM (used in Fedora)
		e.g. pacman (used in Arch)
	}
	Native Package Manager {
		e.g. APT (used in Debian)
		e.g. DNF (used in Fedora, based on YellowDog Linux's YUM)
		e.g. pacman (used in Arch, same as it's package installer)
	}
	Sandboxed Package Manager {
		e.g. Flatpak
		e.g. Nix
	}
	Containers
}

Shared Libraries {
	e.g. System C Library (GNU C Library, already mentioned)
	e.g. GTK+ Library
	e.g. zlib Library
	e.g. 3D Graphics Library (Mesa 3D)
}

Graphical Environment Utilities {
	e.g. Authentication Service (Polkit, already mentioned in Services)
	"e.g. Authentication Frontend (Polkit KDE Agent / 'polkit-kde-agent')"
	e.g. Userland IPC (D-Bus, already mentioned in Services)
}

Graphical Environment Configuration Tools {
	"e.g. GTK+ Configuration Tool (nwg-Look / 'nwg-look')"
	"e.g. Qt Configuration Tool ('qt5ct'/'qt6ct')"
	"e.g. Kvantum Theme Manager for Qt ('kvantummanager')"
}

Utility Programs {
	"e.g. Web Browser (Firefox / 'firefox')"
	"e.g. Media Player (VLC / 'vlc')"
	"e.g. E-Mail Client (Thunderbird / 'thunderbird')"
}

Console Accessories {
	"e.g. Terminal (Alacritty / 'alacritty')"
	"e.g. Modal Text Editor (Helix / 'hx')"
	"e.g. Terminal File Manager (lf / 'lf')"
	"e.g. Media Player (MPV / 'mpv')"
	"e.g. Music Player (ncurses Music Player / 'ncmpcpp')"
	"e.g. Archiver (GNU TAR / 'tar')"
	"e.g. Archiver (Unzip / 'unzip')"
	"e.g. Archiver (7-Zip / '7z')"
}

Common Developer Tools {
	Build Essentials {
		"C/C++ Toolchain (GNU GCC / 'gcc' + g'++')"
		"Build System (GNU Make / 'make')"
		"Build System Script Generator (GNU Autotools / 'autoconf' + 'automake')"
	}
	Optionally: {
		"Debugger (GNU GDB / 'gdb')"
		CMake Build System ('cmake')
		Python 3 Toolchain ('python3')
		Git Version Control System ('git')
		Any Other Language’s Toolchains (Go, Rust, etc.)
	}
}

Alternatives {
	Shell {
		ZSH
		KSH
		Fish
		NuShell
		Microsoft Powershell
	}
	Init System {
		systemd
		OpenRC
		SysVInit
	}
	System Core Utilities {
		Busybox
		Toybox
		rust-coreutils
	}
	Firewall {
		Low Level CLI {
			'iptables' (older de-facto CLI tool)
	    }
    High Level CLI {
			'ufw' (Supports only 'iptables')
	    }
    High Level GUI {
			'gufw' (Frontend for 'ufw')
		}
	}
	C Library {
		Musl
	}
	Login Manager {
		GDM
		XDM
		SDDM
	}
	(Greeter) {
		*many LightDM Greeters*
	}
	Display Protocols {
		X11
		Mir
	}
	Window Managers {
		*many*
	}
	Status Bars {
		*many*
	}
	Launchers {
		*many*
	}
	Widgets {
		*many*
	}
	Icon Packs {
		*many*
	}
	GTK Themes {
		*many*
	}
	Qt Themes {
		*many*
	}
	Generic Program Customizations {
		*wildly many*
	}
	Generic Program Alternatives {
		*wildly many*
	}
	"C/C++ Compiler" {
		Clang with LLVM
	}
}

Freedesktop.org Standards and Software {
	Specifications {
		XDG Window Manager Spec (formerly called EWMH Spec)
		XDG Icon Theme Spec
		XDG Icon Theme Naming Spec
		XDG Sound Theme Spec
		XDG Sound Theme Naming Spec
		XDG System Tray Spec
		XDG MPRIS Spec (Music Player Notification Controls, based on D-Bus)
		XDG MIME Apps Spec (Default Apps)
		XDG Desktop Entry Spec (App Shortcuts (.desktop files))
		XDG Menu Spec (App Launcher Menu)
		XDG Autostart Spec (Startup Apps)
		XDG Base Directories Spec (Standard Paths)
		XDG Trash Spec
		XDG File Manager D-Bus Interface
		XDG Thumbnails Spec
		XDG Clipboard Spec
		XDG Clipboard Extensions Spec
		D-Bus (User-Space Inter-process Communications)
	}
	Software {
		AccountService
		D-Bus
		Polkit
		NetworkManager
		Upower
		Desktop File Utils
		Shared MIME Info (MIME type collection)
		XDG Utils
		Cairo (Drawing Library)
		Mesa3D (Graphics API Impelementation)
		Noveau (NVIDIA Open Source Driver)
		Pixman (Low Level 2D Pixel Manipulation Library)
		Plymouth (Boot Splash)
		Wayland (Current Display Protocol – Core Library)
		X.Org (Old Display Protocol – Libraries and X Server)
		Gstreamer (Multimedia Framework)
		Fontconfig (Font Access Library)
		FreeType (TrueType Font Rendering Library)
		Libinput (Library for Input Device Handling)
		pkg-config (Build System Package Identification)
		PulseAudio (Sound Mixer)
		PipeWire (Sound Mixer with low-latency driver, replacing both PulseAudio and JACK)
	}
	Software Formerly Hosted on Freedesktop.org {
		AppStream (App Metadata)
		at-spi2  (Accessibility Framework)
		Avahi (Multicast DNS)
		Flatpak
		HarfBuzz (OpenType Font Layout Engine)
		LibreOffice
		PackageKit
		systemd (Full System Manager)
		UDisks (Storage Management)
	}
}

```

# Example Code
```

title Abstract Linux Distribution Architecture

// Kernel and its subsystems

Kernel [color: lightblue] {

	Linux Kernel [icon: linux]
	
	ALSA [icon: volume-2]
	
	V4L2 [icon: video]
	
	DRM [icon: monitor]

}

// Userland components

Userland [color: lightgreen] {

	Kernel Modules Directory [icon: folder]
	
	Root File System [icon: hard-drive] {
	
		Proc [icon: file-text]
		
		Dev [icon: hard-drive]

	}

	System Utilities [icon: tool] {
	
		GNU Coreutils [icon: terminal]
		
		GNU Binutils [icon: settings]
	
	}
	
	Shell [icon: terminal] {
	
		GNU Bash [icon: terminal]
	
	}
	
	Login Manager [icon: log-in] {
	
		LightDM [icon: user-check]
	
	}
	
	Compositor [icon: layers] {
	
		Hyprland [icon: layout]
	
	}
	
	Init System [icon: play] {
	
		Runit [icon: play-circle]
	
	}

	Installed Services [icon: cpu]

}

  

// Non-Linux related boot components

Boot Components [color: lightcoral] {

	UEFI Boot Manager [icon: cpu]
	
	Initramfs [icon: file]

}

// Default non-system specific programs

Default Programs [color: lightyellow] {

	Compiler [icon: code] {
	
		GNU GCC [icon: codepen]
	
	}

	Graphical Environment Configuration Tools [icon: sliders] {
	
		GTK App Configuration Manager [icon: sliders] {
		
			nwg-look [icon: sliders]
		
		}
	
		Qt Configuration Manager [icon: sliders] {
		
			qt6ct [icon: sliders]
		
		}
	
		Kvantum Theme Manager for Qt [icon: sliders] {
		
			kvantummanager [icon: sliders]
	
		}

	}

	Utility Applications [icon: tool] {
	
		Web Browser [icon: globe] {
		
			Firefox [icon: firefox]
		
		}
	
		Media Player [icon: video] {
		
			VLC [icon: film]
		
		}
	
		E-Mail Client [icon: mail] {
		
			Thunderbird [icon: mail]
		
		}
	
		Console Accessories [icon: terminal] {
		
			Terminal [icon: terminal] {
			
				Alacritty [icon: terminal]
		
			}

			Modal Text Editor [icon: file-text] {

				Helix [icon: file-text]
			
			}

			Terminal File Manager [icon: folder] {
			
				lf [icon: folder]
			
			}
			
			Media Player [icon: film] {
			
				MPV [icon: film]
			
			}
			
			Music Player [icon: music] {
			
				ncmpcpp [icon: music]
			
			}

			Archive Utilities [icon: archive] {
			
				TAR [icon: file]
			
				7-Zip [icon: file]
			
				Unzip [icon: file]
			
			}

		}

	}

}

// Libraries

Libraries [color: lightgrey] {

	System C Library Collection [icon: book] {
	
		GNU glibc [icon: book]
	
	}
	
	ZLIB Library [icon: compress]
	
	GTK Library [icon: layers]

} 

// Software and package managers

Software [color: lightpurple] {

	Authentication Module [icon: lock] {
	
		PAM [icon: lock]
	
	}
	
	Authentication Frontend [icon: user-check] {
	
		KDE Polkit Agent [icon: user-check]
	
	}
	
	Authentication Service [icon: shield] {
	
		Polkit [icon: shield]
	
	}
	
	Sound Service [icon: volume-2] {
	
		PipeWire [icon: volume-2]
	
	}
	
	Userland IPC [icon: share-2] {
	
			D-Bus [icon: share-2]
	
	}

	3D Graphics API [icon: cube] {
	
		Mesa3D [icon: cube]
	
	}
	
	Package Managers [icon: package] {
	
		Native Package Installer [icon: package] {
	
			rpm [icon: package]
	
		}
	
		Native Package Manager [icon: package] {
	
			APT [icon: package]
	
		}
	
		Sandboxed Package Manager [icon: package] {
	
			Flatpak [icon: package]
	
			Nix [icon: package]
	
		}
	
	}

}


// Filesystem directories

Filesystem Directories [color: lightorange] {

	Etc [icon: folder]
	
	Usr [icon: folder]
	
	Var [icon: folder]
	
	Srv [icon: folder]
	
	Boot [icon: folder]
	
	Home [icon: home]

}

  
// Connections

Kernel > Userland

Userland > Boot Components

Userland > Default Programs

Userland > Libraries

Userland > Software

Userland > Filesystem Directories

```

# Final

## 1. Kernel Overview
```
Kernel [icon: linux, color: blue] {

CPU Related [icon: cpu, color:violet] {

Processing Functions [icon: code]

}

Memory Related [icon: data, color:lightblue] {

Memory Functions [icon: code]

}

Storage Related [icon: storage, color:green] {

Storage Functions [icon: code]

}

Networking Related [icon: network, color:yellow] {

Networking Functions [icon: code]

}

"I/O Ports Related" [icon: plug, color:orange] {

System Functions [icon: code]

}

"I/O Devices Related" [icon:monitor, color:red] {

Human Interface Functions [icon: code]

}

}
```

## 2. Some Kernel Systems

```
Some Kernel Systems [icon: linux, color: black] {

Sound System [icon: sound, color: red] {

ALSA [icon: code, color: red]

}

Firewall System [icon: firewall, color: orange] {

netfilter [icon: code, color: orange]

}

Display System [icon: display, color: blue] {

"DRM/KMS" [icon: code, color: blue]

}

}
```

# User Space

## 3. Motherboard Firmware and Boot Stage

```
"Motherboard" [color: black] {

"Firmware (BIOS / UEFI)" [icon: azure-power]

}

  

"Bootup" [color: black, icon: loader] {

"UEFI/BIOS Boot Manager" [color: indigo, icon: menu]

"Kernel" [color: yellow, icon: linux]

"initramfs" [color: orange, icon: disc]

}
```

