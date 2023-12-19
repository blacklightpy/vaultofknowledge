- Make directory and enter it
- Unpack a stage-3 Gentoo tarball / Bootstrap a distro
- Copy `/etc/resolv.conf` to `chroot-dir/etc`
	- Set permissions: `chmod a+r etc/resolv.conf`
- Make any other mounts
	- `mkdir var/db/repos/gentoo`  (Gentoo example: package manager db)
- Mount the required directories
	- `mount -t proc /proc proc`
	- `mount -R /sys sys`
	- `mount -R /dev dev`
	- `mount -R /run run`
	- `mount -R /var/db/repos/gentoo var/db/repos/gentoo` (Gentoo example)

> [!NOTE]
> `mount -t` has the syntax `mount -t type [device] [directory]`
> `mount -R` is an alias for `mount --rbind`, and has the syntax `mount -R [directory] [device]`

- `chroot dir` : Enter chroot 
	- Use `linux64 chroot dir` if on a 32-bit OS and need to run a 64 bit program (`linux64` is an alias to `setarch linux64`)
- `env update && source /etc/profile` : Load environment variables
- `export PS1="(chroot) $PS1"` : Set shell prompt
- Perform other configurations
	- Set locale
	- Set timezone
	- Install essential software like Mesa3D
- Exit
- Unmount mounted directories
	- `umount -l proc`
	- `umount -l sys`
	- `umount -l dev` (Steam requires /dev/shm)
	- `umount -l run` (For accessing D-Bus; essential for some optional convenience features of Steam)
	- `umount -l var/db/repos/gentoo`
- Optional (For Steam on X11)
	- For Steam
		- Run `id -u` from outside the chroot to get the local user's UID
		- `useradd -u <UID> -m -G audio,video steam` : Create steam user with the same UID as the user
	- For X11 Forwarding
		- Install `xhosts` on the host and restart the display manager to allow X11 forwarding to `chroot`
		- This allows the DM or `xinit` to grant permissions according to `xhosts` to the local UID
		- A more insecure method is to run `xhosts +local`, which will allow any user to access X Server. Revoke this by `xhosts -local`
- 