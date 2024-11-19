Wine, formerly WINE, originally stood for "WINE Is Not an Emulator".

It is a compatibility layer which allows running Windows applications on other operating systems such as UNIX systems, Haiku, etc.

As the original name implies, it is not an emulator, but rather, a layer that translates the Windows [[Application Binary Interface|ABI]] into the host ABI.
# Clearing up confusion
## What is an Emulator?
An [[Emulators|emulator]] or software virtualizer is a program that virtually creates a system, on which a program runs. That is, rather than translating system calls which get eventually passed on to a kernel, the entire machine is implemented as software. Only the instruction set architecture is emulated by the host kernel, but any application running within the emulator has nothing to do with the host kernel. In other words, emulators are type 2 hypervisors.
## Similar to Emulators: Virtualizer
Similar to this is a hardware [[Virtualization|virtualizer]], or hypervisor, which is a program that does not virtually create a machine, but instead creates an abstract interface through which it can run a separate instance of a program or an operating system. With a virtualizer, all programs running in the guest operating system will have direct access to the underlying hardware, rather than an emulated hardware. The access to the hardware would either be direct (in which case it is a type 1 hypervisor), or through the host operating system (in which case it's a type 2 hypervisor).
## What is a Compatibility Layer like Wine?
Being a compatibility layer, running a program on Wine is similar to running a 32 bit binary on a 64 bit kernel. 64 bit kernels cannot directly run 32 bit binaries, but a compatibility layer could translate the 32 bit binary calls to the native 64 bit kernel. For example, WoW64 on Windows allows running 32 bit programs in 64 bit Windows systems.

Other examples are:
- Running a Java program requires the JVM, which does not really emulate a hardware, but instead provides backends for operating system and hardware architecture combinations.
- Running programs which depend on dynamically linked libraries require the respective runtime libraries to be present, such as Universal C Runtime, DirectX Runtime, GNU C Library, Vulkan Library, Musl C Library, .NET Framework, JavaScript Engines, Python Interpreter, etc.
- Running programs which depend on other programs themselves can be technically thought of as requiring the other program's ABI.
- Running a native program itself requires the operating system's default libraries and required runtimes to be present, so the operating system itself is compatibility layer for a program. (Think of 'Run in compatibility mode' in Windows systems)

So basically there's no difference between an ABI translation layer and an ABI implementation, except that sometimes the ABI is of the kernel directly, but in other cases, it's some userspace binary or library ABI.

### Is there any meaningful difference?
Yes, an emulator will have to emulate the entire underlying hardware with all it's hardware instructions, that is, creating a hardware within hardware using software. It will certainly have a noticable latency.

To run a virtualizer, the entire operating system must be able to run on the host hardware. This is not possible, say for an Android ROM built for ARM64, to run hardware virtualized on an x86_64 host. It would require emulation, or software virtualization, although the emulator can be provided with access to native GPU or memory by passthrough to achieve a higher performance, for example with QEMU/KVM.

But to run a compatibility layer, only the relevant parts of the operating system or runtime has to be re-implemented for the particular host operating system. If an official effort was made, this compatibility layer would simply be a native runtime.

### How does the confusion arise?
However, we tend to refer to call software compatibility layers if they are a layer above the main operating system. For example, although WSL is native, we don't refer to it as a runtime, but as a compatibility layer. But when it comes to runtimes, we don't make such a distinction, although they too are in a layer above the operating system.

So it seems fair to call Wine just a Windows runtime!

> [!idea]
> It could be renamed WINEBAR: Wine Is Not an Emulator, But A Runtime