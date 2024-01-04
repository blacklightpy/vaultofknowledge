# Problem
- Disk space is low
- I installed the game on an NTFS partition
- NTFS does not work well with WINE, as I've heard
# Solution
- Attempt 1: Mount NTFS without windows_names. No result.
- Attempt 2: Symlink Proton and compatdata from a non-NTFS partition. Moving compatdata resulted in errors because of the same problem with NTFS.
- Attempt 3: Partition D: drive to get a btrfs partiton. Failed as it says I must chkdsk from Windows. Not worth it for now.
- Attempt 4: I will clean up my Ventoy Disk and partition a part of it as btrfs and move the game there.
- This worked!