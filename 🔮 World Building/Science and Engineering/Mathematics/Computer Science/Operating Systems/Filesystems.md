A filesystem is required because it defines the way in which files and directories are represented in a disk, and if any compression algorithm is used. The filesystem spec can then be used to read the filesystem properly.

The disk is supposed to be partitioned, so it can divide the disk appropriately so that an operating system can run from it. If a device is only used for storage, usually we won't bother with partitioning it. Besides, partitioning storage drives just restricts you from storing a large file even if there's enough free space on two partitions put together.

The partitioning standard must also be something that's recognized by all types of hardware, so it must be a fairly strict standard, while filesystems themselves can be much more flexible, in case they are only meant to be run on specific operating systems. Of course, a device can have a custom partition table, but 
# Characteristics
Journalling
Metadata
Permissions
Block Size
Architecture (inodes, etc.)
Kernel Space / User Space

# Types
- FAT
- FAT32
- exFAT
- NTFS
- ext2
- ext3
- ext4
- ZFS
- Btrfs
- HFS+
- APFS