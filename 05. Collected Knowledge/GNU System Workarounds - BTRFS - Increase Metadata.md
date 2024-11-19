Guide from: https://unix.stackexchange.com/questions/347487/how-do-i-expand-btrfs-metadata

- Basically, you add a new device to the filesystem - a virtual device - a loop device.
- Then you start balance (you could start with empty chunks, slowly increasing chunk sizes, or do it all the way)
- Then you remove the device from the filesystem and delete the loop device

NOTE: The unallocated space is useful.