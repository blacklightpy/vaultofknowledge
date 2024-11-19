### Redundant Array of Independent/Inexpensive Disks (RAID)

It is a technology that combines multiple physical disk drives into one or more logical units for data redundancy, performance improvement or both.

# Types
## Standard Levels
- RAID 0
- RAID 1
- RAID 2
- RAID 3
- RAID 4
- RAID 5
- RAID 6
## Nested (Hybrid) RAID
- RAID 0+1
- RAID 1+0
- JBOD RAID N+N (JBOD = Just a bunch of disks)
## Non-standard Levels (mostly proprietary)
- Linux MD RAID 10
- Hadoop RAID
- BeeGFS
- Declustered RAID

# Software RAID
## Virtual Device
- Linux's md
- OpenBSD's softraid
## Logical Volume Manager
- Veritas
- LVM
## A component of the Filesystem
- ZFS - RAID 0 | RAID 5 (RAID-Z1) single parity | RAID 6 (RAID-Z2) double parity and triple parity (RAID-Z3/RAID 7)
- Spectrum Scale
- Btrfs
- XFS
## OS implementations
- HP OpenVMS - RAID 1
- macOS - RAID 0 | RAID 1 | RAID 1+0
- FreeBSD - RAID 0 | RAID 1 | RAID 3 | RAID 5 | All nestings
- Linux - RAID 0 | RAID 1 | RAID 4 | RAID 5 | RAID 6 | All nestings
- Windows - RIAD 0 | RAID 1 | RAID 5
- NetBSD - RAID 0 | RAID 1 | RAID 4 | RAID 5
- OpenBSD - RAID 0 | RAID 1 | RAID 5