# Considerations
- The file and path naming conventions will be based off the kernel you are using.
- Case sensitivity of file records will also be dependent on the filesystem and the shell.
# How It's done in OS
## Microsoft Windows NT
### System Files and System Libraries
C:/Windows/System32
C:/Windows/SysWoW64
### Userspace
- C:/
- C:/Program Files
- D:/
### Program Files and External Shared Libraries
C:/Program Files
C:/Program Files (x86)
### Global Program Data
C:/ProgramData
### Application Shortcuts
C:/Users/User/AppData/Microsoft/Windows/Start Menu/
### User Programs and Data
C:/Users/User
C:/Users/User/AppData
D:/
### Program Working Directories
C:/Users/User/AppData/Temp
C:/Windows/Temp
### External Mounts
E:/
## Apple macOS (Darwin/XNU)
### System Files
/System
### System and External Shared Libraries
/System/Libraries
### Program Files and Program Data
/System/Applications
### User Data
/Users/User
### External Mounts
/Volumes
## GNU / Linux
### System Files
/proc 
/dev 
/boot 
/sys 
/root 
### Global Program Configurations
/etc 
### Program Working Directories
/tmp 
/run 
/var 
### Dedicated Directories
/srv 
/opt
### Userspace
/usr
/home
### Package Manager Installed Programs
/usr/bin
/usr/lib
/usr/libexec
/usr/include
/usr/share
/usr/src
### Locally Installed Programs
/usr/local/bin
/usr/local/lib
/usr/local/libexec
/usr/local/include
/usr/local/share
/usr/local/src
### Application Shortcuts
/usr/share/applications
### User Data
/root
/home/user
### User Installed Programs and Configuration Files
/home/user/.local/bin
/home/user/.local/lib
/home/user/.local/share/
/home/user/.config
### User Application Shortcuts
/home/user/.local/share/applications 
### External Mounts
/mnt
/run/media

# My New Ideas
## 1. Standardized FHS
We will consider the subdirectories (/usr/bin, etc.) and the general system directories (/dev, /proc), but we'll change the main directories (/usr, /usr/local, /home/.local, etc.) and symlink to the traditional directories.

**Subdirectories:**
/bin (Binaries) 
/etc (Configuration Files)
/lib (Shared Libraries) > /lib32 /lib64 /sbin 
/include (Static Headers)
/src (Source Files)
/libexec (Executable Library Tools)

**Main directories:**
/packages (System Packages)
/local (Local Packages)
/home/user/packages (Local Packages)
/nix (3rd Party Packager, Nix)
/var/flatpak (3rd Party Packager, Flatpak)
## 2. Modernized FHS
We'll make everything named appropriately, but without making common directories too hard to access from the command line. That is, by using CamelCase names instead of spaces.

/EFI
/System/Boot/Bootloader/
/System/Boot/Kernels/
/System/Boot/
/System/Devices/ (symlink to /dev)

[ /bin /dev /proc /sys /etc /tmp /run /var /srv /opt /mnt /root ] (Hidden in default file manager and shell, shell begins at /System or /Users/User)

/Libraries
/PackagedPrograms (subdirectories: SharedFiles, Libraries, Configurations)
/LocalPrograms
/Configurations (contains Freedesktop .desktop files)
/MountedVolumes

/Users/User
/Users/User/Programs
/Users/User/Configurations
/Users/User/[Documents Videos Pictures Downloads Music]
/Users/User/WorkingDirectory