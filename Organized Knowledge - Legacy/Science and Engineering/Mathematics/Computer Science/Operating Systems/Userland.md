Userland refers to everything outside the kernel of an operating system. A kernel is generally only the heart of the operating system, which connects all the hardware components and defines the flow of operations. However, the core userland software is what allows one to interact with the kernel, making it an actual operating system.

At minimum, every operating system has a core userland to provide interaction with the kernel.

The core userland consists of the essential runtimes, shell utilities, and any other essential applications such as a graphical user interface.

For example, in Microsoft Windows the core userland contains the bootloader, system utilities, system services, accessory software, window manager and compositor, themes, shared libraries or DLLs, etc. Additionally, software may also depend upon 3rd party but generally expected runtimes such as specific MSVC Runtimes, DirectX, etc.

But in UNIX-like operating systems, the core userland generally contains a bootloader, an initialization system, a system-wide C library or libc (unless it prefers static linking), configuration files and a package manager.

A libc being a core component is the general differentiator, aside from having a package manager, rather than every software being installed manually and being linked to a common or customizable path. Additionally, the wider userland often includes a C/C++ software compiler, a graphical desktop environment, a subsystem manager for sound and network and other ease of use applications.
