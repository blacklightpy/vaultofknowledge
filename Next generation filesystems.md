They include hardware integrity checking as part of the file system.

Legacy filesystems assumed high integrity in the hardware as bit rot would only occur at a rate of 1:10^14 bits (~12TB) for consumer disks (IDE, SATA) and about 1:10^15 bits (~125TB) for enterprise disks (SAS, SCSI). But as data workloads increased beyond Terabytes to Petabytes, they proved necessary.

They also checksum and compare every byte on each read and write. This means that the RAM **must** be reliable, and where integrity is critical, ECC RAM is recommended. They also don't rely on controller level [[RAID]].

They tend to be Copy on Write (CoW). This means that before each block is rewritten, the filesystem makes a copy of the original block, modifies it and writes it to a different part of the disk. This way, even if a crash occurs, the old block is still there, unmodified.

CoW enables snapshotting as a handy byproduct. Snapshots track the original blocks and this allows remembering the changes to the current system as a snapshot. This allows storing backups of previous states without taking up too much data. 

We can use apps like Timeshift to manage snapshots in btrfs. Timeshift also allows taking snapshots of filesystems like EXT4 which don't have CoW, using other methods.

Examples: ZFS, BtrFS, ReFS, APFS

### Notes
ZFS was invented by Sun Microsystems.
ZFS is memory hungry.

Btrfs was invented by Oracle as a competitor to ZFS, but then they bought Sun.
Btrfs is not memory hungry.
Btrfs supports subvolumes, which seperates volumes while still allowing them to use the space of the main partition.

ReFS is Microsoft's high integrity filesystem.

APFS is Apple's new filesystem, which replaces HFS+.