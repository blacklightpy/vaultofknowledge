I'll start by looking at the filesystem, in Void Linux

- /usr/bin : The binary path (symlinks: /bin /sbin)
- /usr/lib : The library path (symlinks: /lib /lib64)
	- Includes Python in, because many programs depend on Python runtime; in `/usr/lib/python3`
	- Includes C/C++ Libraries in `/usr/lib/gcc/<arch-kernel-libc>`
	- The root folder includes the C shared libraries
	- Subfolders include package specific libraries, like Python, GCC, etc.
	- Some applications (especially in `/usr/local/lib`) put files in the root folder too
- /usr/lib32 : The multilib library path (symlinks: /lib32)
- /boot : The boot files - EFI and GRUB
- /dev : A ton of interfaces
	- ??
- /etc : Configurations
	- Commonplace files include
		- `hosts` : Stores system host name
		- `passwd` : Stores user ID mappings
		- `shadow` : Stores user passwords
		- `sudoers` : Stores sudo configuration
		- `hostname` : Stores FQDN and partial hostname mappings to IPs, aside from DNS
		- `resolv.conf` : Stores DNS Resolver configuration
		- `nsswitch.conf` : Sets the order of host resolution by system library functions
- /home/username : User home directory
	- Stores user specific software configurations in `.config` and in the root folder
	- Stores local software files in `.local`, but in a more casual style compared to `/usr/local`
	- Stores software cache in `.cache` and in the root folder
	- Flatpak uses `.var` folder to store user specific app installations
	- Commonplace files include
		- X11 Related: `.XAuthority`, `.xprofile`, `.xinitrc`
		- Bash Related: `.bashrc`, `.bash_history`, `.bash_profile`, `.bash_logout`
		- Git Config: `.gitconfig`
		- Miscellaneous: `.python_history`
		- I don't know what: `.inputrc`, `.lesshst`, `.gtkrc-2.0`, `.profile`, `.wget-hsts`
- /proc : A ton of interfaces
	- ??
- /root : Root home directory
- /sys : A ton of interfaces
	- ??
- /run : A ton of runtime interfaces
	- ??
- Empty standard directories : /media /mnt /opt /srv
- /tmp : Temporary directory
- Other /usr Subdirectories:
	- /usr/include
	- /usr/libexec
	- /usr/local : The manual installations as opposed to package manager installations
		- Has `/usr/local/bin`, `/usr/local/lib`, `/usr/local/include` and `/usr/local/share`
	- /usr/share : Shared assets
		- Includes `fonts`, `applications`, `icons`, ...
	- /usr/src : Empty folder
- /var : A ton of runtime files
	- ??