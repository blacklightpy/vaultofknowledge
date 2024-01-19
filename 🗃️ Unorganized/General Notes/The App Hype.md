I guess Apple started this.

I mean, reinventing is great, and is my thing, but I don't appreciate the hype that much.

# What is an app really?
App, is short for Application.

An application is a type of computer program that faces the user, and performs a task. For example: A word processor, an e-mail client, 

This is different from utility software, which performs tasks which the user would like to get done, but don't interact with much. For example, Virus Scanners, Backup Utilities, Video Conversion Utilities.

Windows used to refer to all user-space software as programs, and any system provided applications would be classified as accessories (such as Wordpad, Paint, etc.)



# My Ideas of Software
- Infrastructure Software: General Purpose Infrastructure Software (Replaces [[Enterprise Management Software|EMS]])
- Organization Software: Software tailored to a specific Organization (is expected to have interfaces with other infrastructure software)

- Applications (e.g. Office Software, Productivity Suites, 3D Modeling Software, CAE Software)
- Accessories (e.g. Web Browser, E-Mail, Audio manager, Podman)
	- System Accessories (e.g. File Manager, Shell)
- Utilities (e.g. Video Converters, Virus Scanners, Compiler)
	- System Utilities (e.g. Service Software Manager, Disk Checker)
- Local Service (e.g. Steam Update Service, ADB Server, Download Manager)
	- Local System Service (e.g. Service Software Monitor, ACPI, Defragmenter)
- Network Host Service: Software that provides network services (Self-hosting / Web Applications)
- Software Library Runtimes (e.g. DirectX, Wine, Mesa, X)
	- System Software Library API Runtimes (e.g. Win32 DLLs, GNU C Library)
- Media and Games (Games are a combination of Media and Application)

Software can be further divided into Local and Network software.
Local Software can be divided into User and System Software.
Network Software can be divided into Host and Client Software.
Network Host Software are provided as Services, and Client Software are Utilities or Applications.

> [!tip] Idea
> There's only just software. All software either runs directly on the CPU, or it is dependent (or restricted) on other software such as the booted **Kernel**, **Kernel+System API Runtime** (aka the OS), **Kernel+System API Runtime+Application Specific Runtime**, or just an **Application Specific Runtime** (in which case, the runtime already depends on the OS, without the developer having to worry about it)