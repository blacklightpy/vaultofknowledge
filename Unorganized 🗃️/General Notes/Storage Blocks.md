- A block is the smallest unit of data that can be written to a storage device
- Hamming codes work by having a 256 block with 9 bits for error correction.
# Block Sizes
- HDDs have a physical block size ranging from 512-4096 bytes

- HDDs generally refer to blocks as sectors
- SSDs generally refer to blocks as pages
- Filesystems generally refer to blocks as blocks.

- Operating systems often use larger blocks of 4096 bytes called a "page" or an "allocation unit".
	- A page consists of 8 sectors.
- Modern disks are also using physical sizes or sectors of 4096 bytes.
	- This can make the operating systems that write in 512 byte sectors inefficient, because the disk has to read 4096 bytes to access just 512 bytes on every read/write.
- SSDs use physical units of 512 KB