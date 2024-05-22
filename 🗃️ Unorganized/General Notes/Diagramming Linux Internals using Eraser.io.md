
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
	- There are two major displaying protocols for desktop, namely the old **X Windowing System v11 Rev.7**, or **X11**, or **X**, and the newer **Wayland** protocol. There was also **Mir** by Canonical, but it did not gain any adoption.
	- **X** was a client-server protocol where the **window manager** or **compositor** would be **X** clients just like other programs, with the **window manager** or **compositor** having exclusive access to the background **X Server**, the main implementation for which was by the X.Org Foundation, namely **X.Org**.




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