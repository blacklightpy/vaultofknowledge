
> [!tip] Also checkout
> [[Alternatives sandboxes to plain chroot]]
# The easy way
- Install Atoms from Flatpak, and you get an easy GUI
# The easy way in Void Linux
>[!note]
>- For XBPS_ARCH, available options are `x86_64`, `x86_64-musl` and `i686`
## Using xvoidstrap and xchroot
Bootstrap chroot:
```
# mkdir <chroot_dir>
# XBPS_ARCH=<chroot_arch> xvoidstrap <chroot_dir> base-container
```
Chroot:
```
xchroot <chroot_dir>
```
## Manually
Copy XBPS RSA keys:
```
# mkdir -p "<chroot_dir>/var/db/xbps/keys"
# cp -a /var/db/xbps/keys/* "<chroot_dir>/var/db/xbps/keys"
```
Bootstrap chroot:
```
# XBPS_ARCH=<chroot_arch> xbps-install -S -r <chroot_dir> -R <repository> base-container
```
For Networking:
```
# cp /etc/resolv.conf <chroot_dir>/etc
# cp /etc/hosts <chroot_dir>/etc
```
Chroot:
> [!warning]
> Remember to unmount the chroot after use. If destructive actions are taken on a mounted chroot, the directories will have to be repopulated by a reboot. Luckily no permanent files are required as chroot mounts.

```
# mount -t proc none <chroot_dir>/proc
# mount -t sysfs none <chroot_dir>/sys
# mount --rbind /dev <chroot_dir>/dev
# mount --rbind /run <chroot_dir>/run
```
# The manual way
- Optional: Run the commands as `root` instead of elevating at each command by `sudo` or `doas`
- Make directory and enter it
- Unpack a stage-3 Gentoo tarball / Bootstrap a distro
- Copy `/etc/resolv.conf` to `chroot-dir/etc`
	- Set permissions: `chmod a+r etc/resolv.conf`
- Make any other mounts
	- `mkdir var/db/repos/gentoo`  (Gentoo example: package manager db)
- Mount the required directories
	- `mount -t proc /proc proc`
	- `mount -R /sys sys`
	- `mount -R /dev dev`  (Steam requires `/dev/shm`)
	- `mount -R /run run` (For accessing D-Bus; essential for some optional convenience features of Steam)
	- `mount -R /var/db/repos/gentoo var/db/repos/gentoo` (Gentoo example)
	- If using `systemd`, do `mount --make-rslave path` for `sys`, `dev` and `run`

> [!NOTE]
> `mount -t` has the syntax `mount -t type [device] [directory]`
> `mount -R` is an alias for `mount --rbind`, and has the syntax `mount -R [directory] [device]`

> [!NOTE] Regarding mount directories
> Look at the distro documentation and the app requirements to decide what directories to mount. It is better to invoke chroot by an script which unmounts the paths when the program exits, to avoid accidentally deleting the mounted files.
> 
> Generally we mount `/proc`, `/dev/shm`, `/dev/pts` and `/run` (for XDG and D-Bus related stuff)
> 
> - Atoms uses `proot` which mounts a number of directories and files, and it is worth taking note of too.

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
	- `umount -l dev`
	- `umount -l run`
	- `umount -l var/db/repos/gentoo`
- Optional (For Steam on X11)
	- For Steam
		- Run `id -u` from outside the chroot to get the local user's UID
		- `useradd -u <UID> -m -G audio,video steam` : Create steam user with the same UID as the user
	- For X11 Forwarding
		- Install `xhosts` on the host and restart the display manager to allow X11 forwarding to `chroot`
		- This allows the DM or `xinit` to grant permissions according to `xhosts` to the local UID
		- A more insecure method is to run `xhosts +local`, which will allow any user to access X Server. Revoke this by `xhosts -local`
# Other considerations
- Copy `/lib/modules/$(uname -r)`  to `lib/modules`: For kernel modules
- Re-mount vs Bind mount
- `/dev/pts`
- Files like `/etc/passwd`, `/etc/shadow`, `/etc/groups`, sshd server keys

One thing I missed was setting up users, etc.
# Example Wrapper Script for Steam
This simply makes a `chroot` and runs `steam`

```sh
#!/bin/sh
 
# steam chroot bits
chroot_bits="64"
 
# steam chroot directory
chroot_dir="/usr/local/steam64/"
 
# check if chroot bits is valid
if [ "${chroot_bits}" = "32" ] ; then
  chroot_arch="linux32"
elif [ "${chroot_bits}" = "64" ] ; then
  chroot_arch="linux64"
else
  printf "Invalid chroot bits value '%s'. Permitted values are '32' and '64'.\n" "${chroot_bits}"
  exit 1
fi
 
# check if the chroot directory exists
if [ ! -d "${chroot_dir}" ] ; then
  printf "The chroot directory '%s' does not exist!\n" "${chroot_dir}"
  exit 1
fi
 
# mount the chroot directories
mount -v -t proc /proc "${chroot_dir}proc"
mount -vR /sys "${chroot_dir}sys"
mount --make-rslave "${chroot_dir}sys"
mount -vR /dev "${chroot_dir}dev"
mount --make-rslave "${chroot_dir}dev"
mount -vR /run "${chroot_dir}run"
mount --make-rslave "${chroot_dir}run"
mount -vR /var/db/repos/gentoo "${chroot_dir}var/db/repos/gentoo"
# the --make-rslave flags are needed for systemd support (not needed in runit)
 
# chroot, substitute user, and start steam
"${chroot_arch}" chroot "${chroot_dir}" su -c 'steam' steam
 
# unmount the chroot directories when steam exits
umount -vl "${chroot_dir}proc"
umount -vl "${chroot_dir}sys"
umount -vl "${chroot_dir}dev"
umount -vl "${chroot_dir}run"
umount -vl "${chroot_dir}var/db/repos/gentoo"
```