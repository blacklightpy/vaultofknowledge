[[Linux Distros]] [[Linux]]

# Users
### Root

root is the name of the system administrator account.
Root has user id 0 and nominally unlimited privileges.

Exceptions:
In modern UNIX systems, SELinux or Apple's SIP (aka rootless system), even root is limited in what it can do.

NOTE: For the rest, read this answer: https://unix.stackexchange.com/a/291467

# Groups

# File System Heirarchy

## /
## /boot
	/boot/efi
## /home
## /bin
## /sbin
## /lib
## /proc
Process information virtual file system
## /dev
System devices virtual files
	/dev/ram - Ramdisk device
	/dev/tty
	/dev/null
	/dev/zero
	/dev/initrd - Bootloader initialized ramdisk
	/dev/loop
	/dev/mouse
	/dev/random
	/dev/rtc
	etc.
## /sys
## /swap
## /root
## /usr
	/usr/share
	/usr/bin
	/usr/lib
	/usr/include
	/usr/local
	/usr/src
## /opt
Manually installed binaries
## /var
## /run
## /media
## /mnt
## /srv
## /tmp
