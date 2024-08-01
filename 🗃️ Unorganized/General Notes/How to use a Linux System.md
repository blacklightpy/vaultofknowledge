## 1. Soccer Mom - I just want to use Excel and watch YouTube, and use Facebook

> [!NOTE] Choosing an right operating system
> You should only be using Linux distributions that are friendly to the average user, such as:
> 
> 1. Fedora Workstation, a base distribution 
> 2. Ubuntu, a free enterprise distribution by Canonical, based off Debian
> 3. Zorin OS, a free user-friendly distribution based off Ubuntu
> 4. Linux Mint, another free user-friendly distribution based off Ubuntu
> 5. Fedora Silverblue: An immutable version of Fedora Workstation
> 6. Vanilla OS: A free immutable distribution based off Ubuntu
> 7. Endless OS: A free immutable distribution targeted towards students in developing countries
> 8. elementaryOS: A beautiful distribution targeted towards home users
> 
> > [!NOTE]
> > Immutable means operating systems that do not allow modifying the base filesystem in a normal scenario. This is good for newcomers who want to experience the system without having to know much anything about the internals of the operating system.
> 

> [!NOTE] Notes while installing it
> You are probably not going to install them yourselves, but for the person who is installing the operating system here are some things to know.
> 1. Most distributions will not package codecs for patented media formats and proprietary drivers by default, and some of them will ask you if you want to include them in your installation. You should choose yes, and if there wasn't such an option, you would have to manually install it afterwards using the package manager.

> [!NOTE] How to Use it
> Every Linux distribution targeting the average user comes with the Firefox browser. But it may have trouble playing certain video files because they use patented encoding.
> 
> > [!NOTE] What are codecs?
> > For example, you may have heard of MP3, JPEG, H.264, etc. They are media coding formats. A specific implementation of an encoder-decoder pair for a media format is called a codec. Some media coding formats are free, but others are patented and require licensing fees to decode. Any software that plays patented video formats without paying the royalties is technically in the legal grey zone. More info [[What is a codec|here]].
> 
> To fix this, you need to install the appropriate codecs for playing those videos.
> 
> This can be achieved by installing the codecs system-wide, but for the home user, I'll recommend just installing a version of Firefox bundling the codecs from the Flathub store.
> 
> ### Option A. Installing codecs for Firefox alone
> The way to do this is to uninstall the version of Firefox you have by default, and install the Flatpak version from the Flathub store. If your operating system has Flatpak enabled and the Flathub store added, you should be able to install it from Flatpak.
> > [!NOTE] What are Flatpak and Flathub?
> > Flatpak is a software packaging format, in which all software is packaged as a single entity, similar to apps in your smartphone. Flathub is the most popular Flatpak store, which is where we will be installing Firefox from.
>
> > [!NOTE] How to know if Flatpak is installed and Flathub is enabled?
> > All the systems recommended here should have Flatpak enabled by default. But Fedora (Workstation and Silverblue) in particular comes with its own Flatpak repostiory named Fedora, which does not have any proprietary software including the codecs, and you will have to add the Flathub remote manually. 
> #### Using the software center
> 1. Open your operating system's software center.
> > [!NOTE] Identifying your software center
> >  It will either be based on GNOME Software or KDE Discover, based on the desktop environment flavour you've chosen. In Ubuntu, it is named Ubuntu Software Center, in Fedora GNOME, it is GNOME Software. On Zorin OS, it is Zorin Software Center and on Linux Mint, it is Mint Software Manager.
> 2. Then search for Firefox (or Chrome). Click on the result.
> 3. Before installing, make sure the source is selected as "Flatpak (Flathub)" instead of the system package repository.
> 4. Click Install
> 
> ### Option B. Installing codecs system-wide
> #### If you are using Ubuntu (or Zorin OS)
> > [!NOTE]
> > You will be installing the Ubuntu Restricted Extras package, which contains the codecs as well as other restricted common utilities. If you only want the codecs, you can install GStreamer instead, which is a multimedia framework which includes the codecs.
> ##### Using Mouse
> 1. Open Software and Updates from the applications launcher
> 2. Under the Ubuntu Software tab, check the box that says "Software restricted by copyright or legal issues (multiverse)". Don't uncheck the others.
> 3. After closing it, the package manager will refresh the package lists from "multiverse".
> 4. Now open Ubuntu Software Centre from the applications launcher, and search for "Ubuntu restricted extras", and install it.
> 
> ##### If you're okay with using the Terminal
> 1. Launch the terminal. Normally the Ctrl + Alt + T shortcut launches the terminal.
> 2. Enter the below three commands.
> ```
> sudo add-apt-repository multiverse
> sudo apt update
> sudo apt install ubuntu-restricted-extras
> ```
> 
> > [!NOTE] What the commands do
> > 1) Enable the "multiverse" repository, which is a collection of packages outside the official distribution, which contains our codecs amongst other stuff.
> > 2) Update the package manager with the list of packages in "multiverse".
> > 3) Install ubuntu-restricted-extras, which as the name implies, contains the codecs.
> 
> > [!NOTE] What the commands mean
> > 1. `sudo` means "**s**uper**u**ser **do**". Superusers are users with privileges to modify the system. Using sudo verifies that you are in charge of the system and it asks for your password. 
> > 2. `apt` refers to the system package manager, Advanced Packaging Tool (APT).
> 
> #### If you are using Fedora
> 1. You should add the Flathub repository with the following command
> 	`flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
> 2. You should now
> #### If you are using Linux Mint
> Follow this simple guide: https://linuxmint-installation-guide.readthedocs.io/en/latest/codecs.html


## 2. Gamer - I want to play games on Steam
GUIDE TODO: For all gamers using NVIDIA cards, enable NVIDIA Drivers
### 2.1. Inexperienced Gamer - I'm okay with games released for Linux
GUIDE TODO: Install from Flathub, Steam and Epic Games.

### 2.2. Casual Gamer - I want games released for Windows, but are supported by Steam Play
GUIDE TODO: Enable Steam Play
### 2.3. I want to play any Windows games
GUIDE TODO: Inform about:
1. Wine, its wrappers (Lutris, Bottles, PlayOnLinux)
2. Valve's Proton
3. DirectX-Vulkan Compatibility layers (DXVK or Gallium Nine, VKD3D)
### 2.4. Pro Gamer - I want all the optimizations I can get from Linux
GUIDE TODO: Inform about the Zen Kernel, and other Kernel Flags

## 3. Actual User - I want to install many other software like on Windows
GUIDE TODO: Inform about:
1. The basics of software packaging and distribution
	1. Building, Packaging, Dependencies, Repositories, Mirrors, Maintenance, 3rd Party Repositories
	2. Other distribution formats: Flatpak, Snap, AppImages, Source Code, Binaries, Nix, Guix
	3. Comparison of package management systems in popular distributions (Debian, Ubuntu, Fedora, Arch)
2. The basic types of software
	1. Based on what they are: Binaries, Shell Scripts
	2. Based on how they are installed: System-wide, User-Specific, Sandboxed

## 4. Enthusiast - I want to understand everything about Linux
GUIDE TODO: Inform that this is a rabbit hole, and most importantly you have to have the mindset to look out for resources.
1. History of Linux and GNU
2. Inform the working of Linux gradually by switching the levels of user friendliness.
	Level 1: Ubuntu
	Level 2: Another Distribution (say Fedora)
	Level 2: Arch / Void
	Level 3: Gentoo
	Level 4: Linux From Scratch
	Level 5: Beyond Linux: FreeBSD, GNU/Hurd, Custom
	Level 6: Beyond Operating System: Bare Metal, RTOS, Computer Architecture
3. The Freedesktop organization projects
	1. X, Wayland, PulseAudio, GStreamer, systemd
	2. AppStream, XDG Base Specifications
4. The core systems:
	1. Kernel: upstream, linux-libre, zen
	2. Graphics: Graphics APIs, X, Wayland
	3. Sound: ALSA, PulseAudio, JACK, libsndio, PipeWire
	4. Network: wpa_supplicant, NetworkManager
	5. Bluetooth: bluez
	6. Init System: BSD rc.d, systemd, runit, s6, OpenRC, SysVInit
	7. Battery: tlp
	8. Devices: Block Devices
	9. User Management and Permissions
5. Other systems
	1. Audio/Video Playback: FFmpeg, GStreamer, libavcodec
	2. Remote Desktop: VNC, RDP
	3. Shells: sh, bash, dash, ksh, zsh, fish, nushell
	4. Shell Commands: ls, cat, find, grep, sed, awk, man
	5. Shell Utilities: mount, umount, lsb_release, lspci, lsusb
6. Configurations
	1. xinitrc / xprofile
	2. /etc/ and ~/ directories
	3. Configurations for display manager, general apps, window manager / desktop environment
	4. bashrc, zshrc, fish.config
	5. fstab
	6. sudoers

## 5. Eren Yeager - I want freedom and nothing less.
GUIDE TODO:
1. FSF Endorsed Distributions - Trisquel, Dyne:bolic, Parabola, Hyperbola, GNU Guix
2. The Linux-libre kernel
3. Non FSF Endorsed Distributions, but upholding the principles - Debian, Void, Arch
4. Not Linux - FreeBSD / OpenBSD / NetBSD / DragonflyBSD, HaikuOS, GNU/Hurd
5. Aspects of Freedom: Freedom, Privacy, No lock-ins
6. The systemd controversy
7. The Freedesktop project
8. Free Codecs
9. Free Software
	1. Cloud: Nextcloud
	2. Office: LibreOffice, ONLYOFFICE
	3. CAD: FreeCAD, KiCAD, LibrePCB, gEDA, OpenFOAM, Paraview
	4. Others