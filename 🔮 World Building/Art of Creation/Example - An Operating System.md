> [!NOTE]
> Remember, the goal is that everything is modular, until the deepest level we know of it.

# Quick Overview
An OS defines a framework to access the functions of the CPU, Memory, Storage and Peripherals in a secure manner.

An OS comes with it's core system, or the kernel as well as functional programs to easily access the core system features, known as system programs. Additionally, there will likely be a system specific software development library abstracting away common system call routines for ease of software development.

An OS should also come with a display interface, typically and colourful graphical interface and a bunch of day-to-day use programs and other system utilities.

That is:
- Operating System
	- Core System
	- System Programs
	- System Library
	- User Space
		- System Utilities
		- Default Programs

Here, we will focus mainly on the core system for simplicity. It will contain core functions like memory management, thread management, process management, process scheduling, handling locks, peripheral management, storage management, power management, network management, security management, device health management, user management and background service management.

- Kernel
	- Memory Management
	- Thread Management
	- Process Management
	- Process Scheduling
	- Handling Locks
	- Peripheral Management
	- Storage Management
	- Power Management
	- Network Management
	- Security Management
	- Device Health Management
	- User Management
	- Background Service Management

We will focus on a kernel subsystem, the storage management system, or file system.
# File System

The file system defines the pattern in which data is stored on and read from the storage device. That makes it responsible for the efficiency and method of storing information about files, or metadata such as file size, 


SOUND.TRACK (Tagged Music File Format)
SOUND.OPUS (Standard Opus Audio File)
MOVIE.VIDEO (Tagged Video File Format)
MOVIE.AV1 (Standard AV1 Video File)
IMAGE.SHOT (Tagged Image File Format)
IMAGE.JXL
FILE.BIN (Generic Configuration File)
FILE.DAT (Generic Data File)
FILE.EXE (Executable File)


## Rough (complete this):

File System - File Records, Partitions - RAID or LVM Configuration - Partition Table (GPT/MBR), EFI System Partition (ESP) - SATA/IDE Disk Driver - SATA/IDE Controller, NAND Controller - Cylinders/Tracks, Heads and Sectors | NAND Flash, Crystal Oscillators - Electrons

- File System
	- Character Reads
	- Buffer Cache
		- Block Reads