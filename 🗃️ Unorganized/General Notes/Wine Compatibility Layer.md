Wine, formerly WINE, originally stood for "WINE Is Not an Emulator".

It is a compatibility layer which allows running Windows applications on other operating systems such as UNIX systems, Haiku, etc.

As the original name implies, it is not an emulator, but rather, a layer that translates the Windows [[Application Binary Interface|ABI]] into the host system ABI.
# Clearing up confusion
## What is an Emulator?
An [[emulators|emulator]] is a program that virtually creates a system, on which a program runs. That is, rather than translating system calls which get eventually passed on to a kernel, the entire machine is implemented as software. Only the instruction set architecture is emulated by the host kernel, but any application running within the emulator has nothing to do with the host kernel. In other words, emulators are type 2 hypervisors.
## Similar to Emulators: Virtualizer
Similar to this is a [[Virtualization|virtualizer]], or hypervisor, which is a program that does not virtually create a machine, but instead creates an abstract interface through which it can run a separate instance of a program or an operating system. With a virtualizer, all programs running in the guest operating system will have direct access to the underlying hardware, rather than an emulated hardware. The access to the hardware would either be direct (in which case it is a type 1 hypervisor), or through the host operating system (in which case it's a type 2 hypervisor).
## What is a Compatibility Layer like Wine?
Being a compatibility layer, running a program on Wine is similar to running a 32 bit binary on a 64 bit kernel. 64 bit kernels cannot directly run 32 bit binaries, but a compatibility layer could translate the 32 bit binary calls to the native 64 bit kernel. For example, WoW64 on Windows allows running 32 bit programs in 64 bit Windows systems.

Other examples are:
- Running a Java program requires the JVM, which does not really emulate a hardware, but instead provides backends for operating system and hardware architecture combinations.
- Running other prog