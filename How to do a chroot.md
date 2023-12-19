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

- 