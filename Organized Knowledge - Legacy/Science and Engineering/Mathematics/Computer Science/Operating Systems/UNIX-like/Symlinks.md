Symlinks, or semantic links are separate [[inodes]] mapping to the same disk data block. This is in contrast to [[Hard links]] which are separate files pointing to the same inode.

If a file that a symlink refers to is deleted, the symlink will remain, but will be orphaned.