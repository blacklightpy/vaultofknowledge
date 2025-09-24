Actually, UNIX-like systems can only mount block devices. You do not really mount files.

> [!NOTE]
> As for why they are called loop devices - that's something unsettled. In UNIX Stack Exchange, user schily said that he created the feature first on SunOS 4.0, which he called `fbk` (file emulates block device); and he complains that Linux seems to use a wrong name for that feature.
> 
> According to others, loop is short for "loopback" - and some say it was chosen to show how the block devices are looped back. I don't know what it means. Solaris 8 introduced `lofi` (loopback file) which worked similarly, and BSD introduced them under the name `vnd` (`vnode` disk).

So `losetup` can be used to create a loop device as `/dev/loopN` based on a disk image. More precisely, a block device is any device in `/dev`. A loop device is a block device for a disk image file.

And only loop devices are mounted using `mount`. When you use `mount` on a disk image, thought it seems direct, it actually runs `losetup` under the hood. In fact, the option `-o loop` does exactly that.

If the disk image contains many partitions, you cannot mount it as a single file system. You you have to inspect the partition table, using a utility like `fdisk` or `gdisk`, and then create loop devices for the specific offsets of the image, and mount them.

`kpartx` from `util-linux` used to do that automatically, and now `losetup` has an option that does that as well.

