Similar to [[Symlinks]], hard links are files that directly point to an [[inodes|inode]] without creating duplicate inodes.

So if one of the files is generated, all hard links are deleted too, since they all were stored in the same inode.