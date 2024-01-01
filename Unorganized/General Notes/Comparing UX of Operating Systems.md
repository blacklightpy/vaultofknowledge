# Apple macOS (Userland: Apple macOS/Apple Darwin; Kernel: Apple XNU)
## Package Management
- Mac App Store (Installed to /Applications)
- DMG Disk Image Files (Drag and Drop; Installed to /Applications)
- PKG (Install Wizard; Installed to Home or Global /Applications)
- Command Line Programs (Installed to UNIX paths)
# Microsoft Windows (Userland: Microsoft Windows; Kernel: Microsoft Windows NT)
## Package Management
- Win32 Installers
- MSI Installers
- Standalone EXE
- Windows Store (Installed to WindowsApps)
- Command Line Programs (Installed normally)
# openSUSE (Userland: GNU; Kernel: Linux)
## Package Management
- Zypper Package Manager
- YaST / KDE Discover / GNOME Software
- Snap Store
- Flatpak
- AppImage (Double Click after enabling permissions)
- Command Line Programs (Installed to UNIX paths)
### Pain Points
- Zypper Packages are not always in default repositories
- Zypper requires adding GPG Key of repositories for privacy
- Zypper Packages use shared libraries and can cause dependency conflicts
	- Solution: Flatpaks allow seperate versions of libraries, and also bundling
	- Solution: AppImages pack libraries along with it
- There are many AppImage integration formats (AppImage Launcher being the best imo, but requires systemd init)
- Flatpak is sandboxed while command line apps are not, often causing accessibility issues