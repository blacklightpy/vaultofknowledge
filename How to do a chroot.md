- Make directory and enter it
- Unpack a stage-3 Gentoo tarball / Bootstrap a distro
- Copy `/etc/resolv.conf` to `chroot-dir/etc`
	- Set permissions: `chmod a+r etc/resolv.conf`
- Make any other mounts
	- `mkdir var/db/repos/gentoo`  (Gentoo example: package manager db)
- mount the required directories
	- `mount -t proc /proc proc`
	- `mount -R /sys sys`
	- `mount -R /dev dev`
	- `mount -R /run run`
	- `mount -R /var/db/repos/gentoo var/db/repos/gentoo` (Gentoo example)

> [!NOTE]
> `mount -t` has the syntax `mount -t type [device] [directory]`
> `mount -R` is an alias for `mount --rbind`, and has the syntax `mount -R [directory] [device]`

- `chroot dir` : Enter chroot 
	- Use `linux64 chroot dir` if not on `amd64` (`linux64` is an alias to `setarch linux64`)
- `env update && source /etc/profile` : Load environment variables
- `export PS1="(chroot) $PS1"` : Set shell prompt
- 