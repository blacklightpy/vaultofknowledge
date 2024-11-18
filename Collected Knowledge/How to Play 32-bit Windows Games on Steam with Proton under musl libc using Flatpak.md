# Problem
- Disk space is low
- I installed the game on an NTFS partition
- NTFS does not work well with Wine, as I've heard
- I cannot launch the game from Wine directly even it doesn't require Steam runtime, because musl libc doesn't support 32 bit in Wine. At least, that's the current state on Void Linux.
# Thinking about the problem and solutions solutions
Doing a glibc chroot would be best for games that don't require the Steam runtime, but I'm lazy to chroot. So the other best option is to use Flatpak. It was then that I noticed that the game just doesn't load.

At first I was confused by the `gameoverlayrenderer.so` and some other libraries' ELF compatibility warning, but turns out that was only because Proton tries to load both 32 bit and 64 bit libraries, and since my system is 64 bit, it ended up showing a a warning for the 32 bit libraries. But the real problem was after this, and that didn't show up in the logs.

After a long time of searching, I came across a solution from the Arch Wiki.

As for compiling Wine from scratch, I'm too lazy for that, and I'm not certain why even the Void Linux maintainers decided that Wine should just be left 64 bit only in musl.
# Solution
- Attempt 1: Mount NTFS without windows_names. No result.
- Attempt 2: Symlink Proton and compatdata from a non-NTFS partition. Moving compatdata resulted in errors because of the same problem with NTFS.
- Attempt 3: Partition D: drive to get a btrfs partiton. Failed as it says I must chkdsk from Windows. Not worth it for now.
- Attempt 4: I will clean up my Ventoy Disk and partition a part of it as btrfs and move the game there.
- This worked!