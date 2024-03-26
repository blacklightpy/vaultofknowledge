Usual Kernels: Process Management, Memory Management, File Record Management, Disk Management, Peripheral Management, Network Management, Power Management

What I want my OS to do:

- Allow Programs to Execute
- Manage Memory Allocation
- Schedule Programs
- Read File Records From Disk Drives
- Create a new file system whose specification can be read
	- It reads data, but representation can vary
	- For example, data can be stored in tables instead of folders
	- It is kind of like a [[Filesystem in Userspace|FUSE]], but in the other direction.
- Support an LLVM backend for every programming language.

- Be able to make use of Board Support Packages to support any arcane hardware

- Blacklight OS CPU Binary Interface
- Blacklight OS Memory Management
- Blacklight OS Scheduler
- Blacklight OS Disk Management
- Blacklight OS File Management
- Blacklight OS Hardware Management (Separate from drivers, to handle integration)
- Blacklight OS Drivers (Collection)
- Blacklight OS HAL
- Blacklight OS Power Management

- Blacklight OS BSP Interface
- Blacklight OS POSIX Threads API

- Blacklight OS Logger
- Blacklight OS Audio Driver
- Blacklight OS Video Drivers

## Core Applications
- Ice Cream Theory Web Browser (HTTP)
- Ice Cream Theory Social Network Client (ActivityPub) - Post, Chat, Micropost, Vlog, Music
- Ice Cream Theory Mail (SMTP/IMAP/POP)
- Ice Cream Theory Gallery
- Ice Cream Theory Motion Picture Player
- Ice Cream Theory Audio Player
- Ice Cream Theory Music Library Manager

- Ice Cream Theory Painter
- Ice Cream Theory Pixel Image Editor
- Ice Cream Theory Vector Image Editor
- Ice Cream Theory Font Editor
- Ice Cream Theory Image Compositor
- Ice Cream Theory Video Compositor
- Ice Cream Theory 2D Animator and Animator
- Ice Cream Theory 3D Modeller and Animator
- Ice Cream Theory 2D Game Engine
- Ice Cream Theory 3D Game Engine

- Ice Cream Theory Document Editor (LaTeX, ODF)
- Ice Cream Theory Spreadsheet Editor
- Ice Cream Theory Presentation Maker
- Ice Cream Theory Slideshow Presenter

- Ice Cream Theory Digital Signal Processor (with Tutorial)
- Ice Cream Theory Oscilloscope
- Ice Cream Theory Radio Signal Processor
- Ice Cream Theory Radio Broadcast Player

- Ice Cream Theory Software Market

Ice Cream Theory welcomes every project, but we would like to create our own reference implementations and make it the best. Nevertheless, this is not a product, and the sources are free for everyone to build upon.