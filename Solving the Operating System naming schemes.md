There has been a naming controversy with the free desktop operating systems, because many of them are built using the Linux kernel, but the rest of the system is usually part of the GNU project. Since they are based on the Linux kernel, many people got used to calling them Linux distributions. Richard Stallman, the founder of the FSF and GNU project however emphasizes that they should be called GNU/Linux distributions to credit the importance of the GNU project in the realization of those operating systems. This however isn't appealing to most consumers as they prefer a simple name, and think that Richard Stallman is being too arrogant with this. This has led to many people hating GNU itself as a project, although it was one of the biggest projects that helped to improve the state of free software.

It is true that the Linux kernel by itself is just a kernel, and not an OS, but it still can be used with other userlands aside from the GNU project to form an OS. Android is one prominent example, and it does not even call itself Android/Linux, and Linus Torvalds, being a pragmatist doesn't care about it. There are other projects like Debian GNU/kFreeBSD that uses the Debian distribution of GNU userspace with the kernel of FreeBSD rather than Linux as with the original Debian project. Chimera Linux is another example that uses the FreeBSD userland with the Linux kernel, and it just calls itself Chimera Linux.

For the sake of pragmatism, one can either call these systems by entirely different names - for example, GNU/Linux could just be called Swash. But this differentiates them from other systems like GNU/kFreeBSD.

Another problem is that, some people argue that if GNU is to be given importance, we should have to give importance to many other projects that make up a Linux distribution, like GNU/Linux/systemd/X/KDE/.. and so on. But speaking with a sense of pragmatism and idealism, GNU deserves a special mention in such distributions because the GNU project is what makes such systems be an operating system at the lowest level and not just the Linux kernel. So the name of the operating system would have to include GNU and Linux. For systems that don't use the GNU userland, Stallman hasn't given any rules, and projects like Android and it's derivatives just call themselves whatever they feel like. Alpine Linux is an example that retains the name Linux.

To standardize this, we can take a look at a system I mentioned earlier - Debian GNU/kFreeBSD. The "k" in kFreeBSD stands for kernel, and since 


We can adopt a naming scheme like u(Userland)/k(Kernel).

- uAndroid/kLinux - Android, which is an OS that uses the Linux kernel
- uFreeBSD/kLinux - Chimera Linux is an example of an OS that uses the FreeBSD userland with Linux
- uGNU/kFreeBSD - A GNU system with the FreeBSD kernel, for example "Debian GNU/kFreeBSD"
- uGNU/kGNU - A complete GNU system with the GNU Hurd kernel
- u(MacOS/Darwin)/kXNU - MacOS is a properietary OS based on the open source Apple Darwin OS, which runs on the XNU kernel.