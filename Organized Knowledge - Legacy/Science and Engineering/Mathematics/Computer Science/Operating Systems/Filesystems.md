A filesystem is required because it defines the way in which files and directories are represented in a disk, and if any compression algorithm is used. The filesystem spec can then be used to read the filesystem properly.

The disk is supposed to be partitioned, so it can divide the disk appropriately so that an operating system can run from it. This is because different operating systems may prefer different filesystem layouts, and sometimes even support multiple filesystems depending on the user's preferences. If a device is only used for storage, usually we won't bother with partitioning it. Besides, partitioning storage drives just restricts you from storing a large file even if there's enough free space on two partitions put together.

The partitioning standard must also be something that's recognized by all types of hardware, so it must be a fairly strict standard, while filesystems themselves can be much more flexible, in case they are only meant to be run on specific operating systems. Of course, a device can have a custom partition table, but that's not something that runs on a general purpose machine, which is meant to support any type of disks.

To load an operating system, the firmware (BIOS (legacy)/UEFI) will need to identify the partition table, load the boot sector (MBR/EFI), and then look for any bootable partitions, and then load a bootloader stub that it recognizes to identify the kernel, userspace and the parameters with which they should be loaded.

> [!note]
> Different operating systems may require different filesystems, which is why there needs to be different partitions, and hence a standard partition table, and a way to identify bootable partitions.
# Characteristics
Journalling
Metadata
Permissions
Block Size
Architecture (inodes, etc.)
Kernel Space / User Space
# Types
- FAT
	- FAT
	- FAT12
	- FAT16
	- FAT32
	- exFAT
- NTFS
- EXT
	- EXT
	- EXT2
	- EXT3
	- EXT4
- ZFS
- BtrFS
- HFS+
- APFS