Side by Side Assembly, or SxS was a feature added in windows to resolve the problem of conflicts within [[dynamically linked libraries]], or "DLL Hell".

With SxS, the dynamic libraries such as Microsoft Visual C++ Redistributables are installed to the WinSxS directory (`%WinDir%/WinSxS`), which is a privileged directory which can only be accessed by installers. Programs that do not want to ship an installer with administrator privileges tend to bundle the CRT in the app directories.

Basically an application using SxS will have a manifest, located either in the executable or as separate file, which will hold the version of the library required, and the SxS manager will load the right DLL at the time of dynamic linking.
## Related ideas on Linux based GNU systems
GNU/Linux systems have also come up with an alternative to SxS with Nix package manager, and also containerization technologies, all of which generally fall in the same boat.

