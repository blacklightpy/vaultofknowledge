Linux is a kernel which was originally developed as part of making a hobbyist OS for the Intel 80386 microprocessor. Today it has become the dominant kernel on embedded, server and supercomputer systems, with it being also used in the desktop computing space, paired with the GNU operating system userland.

Linux is almost synonymous with the desktop operating system based on Linux and GNU, preferably called GNU/Linux. This has even led to a naming controversy, with Richard Stallman, the founder of GNU emphasizing the important role that the GNU project and FSF has done to popularize Linux and bring freedom to computing.

But anyways, let's go and explore the generic Linux kernel here!
# Exploring the kernel source

- `Makefile`: The top level GNU Make build system configuration file
- `Documentation`: Contains a lot of useful, but often out of date information about configuring the kernel, running with a ramdisk, etc.

- `arch`: Architecture specific code 
- `crypto`: Cryptographic API for use within the kernel
- `drivers`: Drivers
- `fs`: The generic filesystem (VFS / Virtual File System) and specific filesystems.
- `include`: Most header files included in the sources are found here.
	- `include/asm-<arch>`: Contains architecture specific header files. During compilation a symlink is made form `asm` to `asm-<arch>` so that includes can be specified as `#include <asm/file.h>`
- `ipc`: Inter-Process Communication. Contains code for shared memory, semaphores and other forms of IPC.
- `init`: Code for creating the early userspace. It contains `main.c` and `version.c`. It is a good place to start looking how the kernel works.
- `kernel`: Generic kernel level code that doesn't fit anywhere else. The upper level system call code is here, including `printk()`, scheduler, signal handling code, etc. The files inside have self-describing names.
- `lib`: Routines of generic usefulness to the kernel code. Includs string operations, debugging routines and command line parsing code.
- `mm`: High level memory management code. Virtual Memory is implemented through these routines, in conjunction with low-level architecture specific routines. Early boot memory management (before memory subsystem is fully set up), memory mapping of files, management of page caches, memory allocation and swap out of pages in RAM are done here.
	- `arch/<arch>/mm/`: Architecture specific memory routines.
- `net`: High level networking code.
	- `net/core`: Common network protocol code
	- `net/<protocol>`: Protocol specific code.
- `scripts`: Contains useful scripts, but doesn't include any code. For example, configuration tools store files here.
- `security`: Code for different Linux security models (e.g. NSA Security Enhanced Linux) and socket and network security hooks.
- `sound`: Drivers for sound cards and other sound related code.
- `usr`: Contains code that builds a cpio archive that contains a root filesystem used to form an early userspace.

- `modules`: Stores built modules
- `*/Kconfig`: Help entries pertaining to different configuration options in the directory.
# How the kernel loads up
- `arch/<arch>/*` (Architecture specific setup)
	- `arch/<arch>/kernel/head.S`
	- Unzip and move the kernel code itself, if necessary
	- Initialize hardware (may include low-level memory management)
	- Call `start_kernel()` in `init/main.c`
- `init/main.c` (Central point)
	- `start_kernel()`
		- Print out kernel version and command line
		- Start outputting to console
		- Enable interrupts
		- Calibrate the delay loop
		- Call `rest_init()`
	- `rest_init()`
		- Start a kernel thread to run the `init()` function
		- Enter the idle loop
	- `init()`
		- Start the other processors (on SMP machines)
		- Start device subsystems
		- Mount rootfs
		- Free up unused kernel memory
		- Run `init` program
- `init`
	- Start Networking Services
	- Start getty

You can use `printk()` to print messages at any point to debug when a service is started. You can check the appearances of your `printk` message relative to other subsystem initialization messages in `dmesg` to figure out where it is initialized.
- `start_kernel()` does, among other things:
    - Print out the kernel version and command line
    - Start output to the console
    - Enable interrupts
    - Calibrate the delay loop
    - Calls `rest_init()`, which does:
        - Start a kernel thread to run the `init()` function
        - Enter the idle loop


# Where to start looking
## System Startup and Initialization:
`arch/<arch>/kernel/head.S` (Architecture specific setup)
`init/main.c`
## Memory Management
`mm/`
`arch/<arch>/mm`
`mm/memory.c` (Page fault handling)
`mm/filemap.c` (Memory mapping and Page cache)
`mm/buffer.c` (Buffer cache)
`mm/swap_state.c` (Swap cache)
`mm/swapfile.c` (Swap cache)
## Kernel
`kernel/`
`arch/<arch>/kernel`
`kernel/sched.c` (Scheduler)
`kernel/fork.c` (Fork)
`include/linux/interrupt.h` (Bottom half handling code)
`include/linux/sched.h` (Contains `task_struct` data structure)
## PCI
`drivers/pci/pci.c` (PCI pseudo driver)
`include/linux/pci.h` (System wide definitions)
`arch/<arch>/kernel/bios32.c` (Architecture specific PCI BIOS code)
## Interprocess Communication
`ipc`
`include/linux/ipc.h` (Contains `ipc_perm` data structure)
`ipc/msg.c` (System V messages)
`ipc/shm.c` (Shared Memory)
`ipc/sem.c` (Semaphores)
`ipc/pipe.c` (Pipes)
## Interrupt Handling
`arch/<arch>/kernel/irq.c`
`include/asm-<arch>/irq.c`
## Device Drivers

Component wise breakdown:

**/block** (Block Devices, includes IDE and SCSI devices)
`drivers/block/ide.c` (IDE)
`drivers/block/genhd.c` (Storage Devices are contained in `device_setup()`. It can also set up a network as it is needed to mount NFS devices)
**/char** (Character based devices such as TTYs, serial ports and mice)
**/cdrom** (CD ROM code)
`drivers/block/ide-cd.c` (IDE CD driver)
`drivers/scsi/scsi.c` (SCSI CD driver)
**/pci** (PCI pseudo-driver)
`arch/<arch>/kernel/bios32.c` (Architecture specific PCI BIOS code, specifically look Alpha AXP's code in `arch/alpha/kernel/bios32.c`)
**/scsi** (SCSI devices)
**/net** (Network Device drivers)
**/sound** (Sound Card drivers)
## File Systems
`fs/<filesystem>` (Filesystem Drivers)
`include/linux/ext2_fs.h` (ext2 Data structure definitions)
`include/linux/ext2_fs_i.h` (ext2 Data structure definitions)
`include/linux/ext2_fs_sb.h` (ext2 Data structure definitions)
`include/linux/fs.h` (VFS data structures)
`fs/buffer.c` (Buffer cache and update kernel daemon)
## Network
`include/net` (Include files)
`net/socket.c` (BSD socket code)
`net/ipv4/af_inet.c` (IPv4 INET socket)
`net/core` (Generic protocol support code, including `sk_buff` handling routines)
`net/ipv4` (TCP/IP networking code)
`drivers/net` (Network device drivers)
## Modules
`kernel/modules.c` (Kernel side code)
`include/linux/module.h` (Data structures)
`include/linux/kerneld.h` (Kernel daemon, kerneld)
`include/linux/elf.h` (ELF object file structure)