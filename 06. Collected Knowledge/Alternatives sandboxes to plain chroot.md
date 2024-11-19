# Bubblewrap (bwrap)
Has security sandboxing features, and is used by Flatpak. Better than chroot.

TODO: How to use
# Faketree
Saw a medium article related to use in [[Electronic Design Automation|EDA]].
# Concepts
- unshare
	- Used to set namespaces and make them unavailable to main system
- Kernel namespaces
	- Types (from 5.6)
		- Mount (mnt)
		- Process ID (pid)
		- [[Inter-Process Communications]] (ipc)
		- UNIX Time Sharing (UTS)
		- User ID (user)
		- [[Control Groups]] (cgroup)
		- Time
- Generic Sandboxes
	- Flatpak
		- Uses bwrap, etc.
		- Has runtimes
		- Flatseal can manage permissions
	- AppImages
		- Uses [[Filesystem in Userspace|FUSE]]