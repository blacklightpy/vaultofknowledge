
## Format

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


## Attempt

| HW Feature  | Kernel Function           |
| ----------- | ------------------------- |
| CPU         | Processing Functions      |
| Memory      | Memory Functions          |
| Storage     | Storage Functions         |
| Network     | Networking Functions      |
| I/O Ports   | System Functions          |
| I/O Devices | Human Interface Functions |

- Motherboard
	- Firmware (BIOS / UEFI)

- Bootup
	- UEFI/BIOS Boot Manager
	- Kernel
	- initramfs

- Kernel Modules

- Boot Splash
	- e.g. Plymouth

- Init System
	- e.g. Runit
- Service Management
	- e.g. Runit

- Root File System (/)
	- Populated At Boot
		- dev (Devices)
		- proc (Processes)
		- run (Runtime Data Folder)
		- tmp (Temporary Files Folder)
	- Persistent
		- boot (Boot Files)
		- usr (Userland (Software))
		- etc (System-Wide Configurations)
		- var (Variable Storage (Program Data))
		- srv (Dedicated Server Folder (optional))
		- home (Users' Home)
	- Other Folders
		- /bin, /sbin, etc. are now links to /usr/bin

- System Utilities
	- e.g. GNU Core Utilities
	- e.g. GNU Binary Utilities

- Shell
	- e.g. GNU Bash

- Login ManagerX Windowing System v11 Rev.7, or X11, or X
	- e.g. LightDM

- Graphical Environment
	- A graphical environment would consist of a **window manager**, which draws program windows, a **compositing manager** which handles any special effects with regards to the windows, such as animations, blur, etc., and other noticeable components such as the **status bar or task bar**, **app launcher** and any other widgets.
	- If the **window manager** also consists of a **compositing manager**, it is then called a **compositing window manager** or **compositor**.
	- If a project comes with a **window manager** or **compositor** bundled with a **status bar**, **app launcher** and any other widgets, then it is called a **desktop environment**.
	- A graphical environment also needs to have protocol for applications to communicate with the window manager and for the window manager to communicate with the kernel.

- Graphical Environment Protocols
	- There are two major displaying protocols for desktop, namely the old **X Windowing System v11 Rev.7**, or **X11**, or **X**, and the newer **Wayland** protocol. There was also **Mir** by Canonical, but it did not gain any adoption.
	- **X** was a client-server protocol where the **window manager** or **compositor** would be **X** clients just like other programs, with the **window manager** or **compositor** having exclusive access to the background **X Server**, the main implementation for which was by the X.Org Foundation, namely the **X.Org X Server**.
	- **Wayland** is too a client-server protocol, but one where the **window manager** also implements compositing and the **Wayland Server**, and they are thus called **compositors**, or **Wayland compositors** for clarity.
	- **Wayland compositors** can handle legacy **X** clients using the **XWayland** compatibility layer.

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

- Package Manager
	- Every distribution is opinionated in its own ways regarding how software is packaged.
	- This has to do with how distributions originated with different sets of base software, requiring different names for the base packages, alongside their design decisions for maintaining packages and providing a certain experience to the users (such as naming development headers for a program as `pkg-devel` or `libpkg-dev`, or bundle them with `pkg`).
	- So, every base distribution typically comes with their own **package format** and hence a **package installer** and **package manager**.
	- A simple **package installer** would simply install the contents of a package file, provided it does not conflict with any installed packages. But a **package manager** would connect to the software repositories configured in the system and install any package and any missing dependencies as well. It would likely make use of the **package installer** to carry out the installations of packages received from the repository.
	- The **package manager** will also have security systems in place to verify file integrity during transit, by signing the packages.

- Sandboxes and Containers
	- The native package managers in any system tend to package software in such a way that programs depend on other programs in the repository, mostly to reduce duplication, for storage efficiency reasons.
	- Also, for this reason, specific releases of a distribution tend to package only one version of packages, which would be the latest version at the time of the distribution's release, and put the binaries of all programs in a single folder, and shared libraries in another folder, and so on. This also saves the trouble of having to register every software's binary install location into the `PATH` variable so you can easily access installed programs from the command line, which is a very useful tool in free software systems for their powerful capabilities.
	- Since software is not installed in separate folders, we cannot have multiple versions of a package installed at the same time, as it would overwrite the files of the other version. This is generally not an issue as distributions package versions that are best suited for the user, however, for whatever reason, you may want to have a different version of certain software that what's packaged. Perhaps you want to have a newer version of a program, but the distribution only makes newer releases every six months, unlike rolling release distributions.
	- If you constantly need the latest packages, switching to a rolling release distribution would be best. However, for occasional packages, you either need to find a third party repository that provides the package (if you don't want to have the distribution's version), install it somewhere separately if you find a pre-packaged binary, build it from source if it's a lightweight program and you have the right computing power and time, or you can use a sandboxed package manager or container.
	- Sandboxed package managers install packages and any of their dependencies in a separate location from the system, in its own folder structure, which allows installation of multiple versions of packages. Containers are usually used for production purposes, but can fulfil the same purpose. They allow you to run a set of packages in isolation from the system, and port the entire system as an image that you can run on other machines.
	- Same thing, but they tend to be broader scoped than sandboxes, which are usually cross-platform, while containers 


## Example
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