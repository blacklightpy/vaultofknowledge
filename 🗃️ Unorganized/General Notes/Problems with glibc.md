glibc updates are not meant to be forwards compatible. While it doesn't go out of it's way to break forwards compatibility, newer versions of glibc add new [[Application Binary Interface|ABI]] symbols, so programs built against a newer glibc version may not work on and older glibc versions.

You can view the compatibility graph [here](https://abi-laboratory.pro/?view=timeline&l=glibc).
# Comparison with Linux kernel ABI
The Linux kernel userspace ABI is also completely forwards compatible by principle, and it also tries to be backwards compatible as much as possible. Linus Torvalds gets very angry if someone suggests the user to change their ways, one notable example being [poor Mauro](https://lore.kernel.org/lkml/CA+55aFy98A+LJK4+GWMcbzaa1zsPBRo76q+ioEjbx-uaMKH6Uw@mail.gmail.com/) 😂.

A problem with this is that the system call design seems poorly designed, and the reason is definitely an aversion to change, thus sticking with the original ways. In one or two 

Also the Linux kernel apparently does not provide a stable ABI for modules, so kernel drivers always have to be recompiled.

[[Kernel module|Kernel modules]] are not baked into the kernel, and are separately compiled. Still, they are in the kernel space. 

Frameworks like [[Dynamic Kernel Module Support|DKMS]] can work around this issue.