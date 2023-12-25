Assumptions: Hardware is non modifiable, and software runs on top of hardware which provides the physical interfaces and processing power.


- Step 1: Estimate the requirements to select the hardware.
	- This includes the required processing speed, in operations per second, with the knowledge of the operations in context; the memory required; The persistent memory, or storage required; Any functional interfaces such as radio, wired network, audio sources, audio sinks, peripheral ports, expansion slots, physical size, hardware development road-map and projected compatibility, etc.
- Step 2: Select the appropriate operating system, with a general knowledge of the ecosystem built around it.
	- An operating system defines an abstract and secure way of



# Notes from Phone, to complete the steps above
- Firmware Program Loader
- Bootloader (To set any parameters)
- Hardware Interfaces (Kernel)
	- Signal Modem(s)
	- Storage(s)
	- Filesystem(s)
	- Shared Memory Interface, etc.
	- Processor Instruction Interfaces
- Load Filesystem
- Load Configuration Stores
	- Storage Addressing
- Background Services and Management
	- Wi-Fi Protocol and Management
	- Bluetooth Protocol and Management
- Network Addressing
- System Error Logging
- Filesystem Backup
- Users and Session Management
- User Interface
	- Textual, Graphical, Audio, Haptic, etc.
		- Graphical
			- Window Management
			- Composition and Animation
			- Status Panels, Widgets, Launchers
- Core Utilities
	- Shared Runtime Libraries
- Additional System Utilities
	- System Monitor
	- Settings Management Interface
	- Storage Manager
- Extra Utilities
	- Network Service Explorers
	- Filesystem Explorer
	- Media Players
	- Clock, Calendar, etc.
	- Text Editors
	- Any Application Software