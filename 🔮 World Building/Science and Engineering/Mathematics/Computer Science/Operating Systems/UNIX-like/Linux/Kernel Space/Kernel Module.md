It is a part of the kernel source code, such as a driver or any other feature, which can be loaded or unloaded during runtime to extend the kernel.

Kernel modules can either be built-in or be separate. But the Linux kernel space ABI is not guaranteed to be stable, so separate modules have to be recompiled along with the kernel.

Examples of these would include proprietary driver blobs, which is what Linux-libre removes by deblobbing.