# Problem
- Disk space is low
- I installed the game on an NTFS partition
- NTFS does not work well with WINE, as I've heard
- I cannot launch the game from WINE directly even it doesn't require Steam runtime, because musl libc doesn't support 32 bit in WINE. At least, that's the current st
# Thinking about the problem and solutions solutions
Doing a glibc chroot would be best for games that don't require the Steam runtime, but I'm lazy to chroot. So the other best option is to use Flatpak. It was the
# Solution
- Attempt 1: Mount NTFS without windows_names. No result.
- Attempt 2: Symlink Proton and compatdata from a non-NTFS partition. Moving compatdata resulted in errors because of the same problem with NTFS.
- Attempt 3: Partition D: drive to get a btrfs partiton. Failed as it says I must chkdsk from Windows. Not worth it for now.
- Attempt 4: I will clean up my Ventoy Disk and partition a part of it as btrfs and move the game there.
- This worked!