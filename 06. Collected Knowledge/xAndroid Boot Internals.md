# Rant
- Things that I hate that they are locked
	- Cellular Radio Firmware
	- Radio IMEI number (IMEI is hardware, but you spoof it at the software level)
	- Wi-Fi Radio Firmware
	- BT Radio Firmware
	- Camera Firmware
	- SoC Firmware
	- Access to System Files
# Boot Modes
- Early Boot
	- Boot ROM Mode (MTK)
	- PreLoader Mode (MTK)
- Next Stage
	- System Mode
	- Fastboot Mode / Download Mode / Bootloader Mode (Flash physical partitions)
	- Fastbootd Mode (Flash logical partitions)
	- Recovery Mode


> [!NOTE]
> **Types of Stock ROMs**
> - ROM Full Image (Fastboot)
> - ROM Full Archive (Recovery)
> - ROM OTA Archive (Recovery)
>
> **Types of Custom ROMs**
> - ROM Full Archive (Recovery)
> - ROM OTA Archive (Recovery)
>
> Stock Recovery cannot flash custom ROMs as they do not the digital signatures that the recovery checks for.
> Custom Recoveries cannot flash stock ROM Archives as the ZIPs check for the stock system integrity of the device.

## Unknown/Undefined Terminology/Context
- Dead Boot
- Boot Loop
- Dump File
- NAND Storage Devices
	- eMMC
		- Stands for Embedded MultiMediaCard (MMC)
		- It consists of a raw NAND flash along with a controller
		- It is [[Duplexing|half-duplex]]
	- Universal Flash Storage (UFS)
		- It is a modern NAND based storage device
		- It is [[Duplexing|full-duplex]]
- NAND Programming Devices
	- JTAG TAP Programmers
		- We connect NAND -> NAND Socket (e.g. UFS BGA-153) -> NAND Socket Adapter -> TAP on Box
		- Examples
			- Programmer Box
				- EasyJTAG
				- EasyJTAG+
			- NAND Socket
				- IC Friend eMMC Socket
				- UFi Box eMMC Socket
				- UFi Box UFS Socket
			- NAND Socket Adapter
	- Boxes and Dongles
		- **Reference**: https://gsmserver.com/en/articles-and-video/boxes-and-dongles-part-1
		- Boxes usually have a JTAG TAP, Service Port (UART COM - RJ45 (RS-232) to USB-C, etc.), USB Hub (for Storage), SIM Card Port (for Authentication) and a PC USB cable (USB B to A)
			- Service Port uses RJ45 connector for RS-232 electrical interface, and this is not the same as the Ethernet interface. This is usually called a Cisco Cable / Console Cable / Rollover Cable, following the popularization of its use by Cisco for debugging devices. The standard for rollover cables is called the Yost standard.
				- Basically, we want to connect two DTEs together using a null-modem RS-232 cable, so we have to reverse, or "roll-over" the pinouts, and use the right connectors
				- Examples:
					- Cables from SigmaBox's Sigma Cable 9-in-1 set
						- TX/RX/GND Cable
						- Fly DS105/DS120 cable
						- Micro USB cable for Alcatel OT-series, Motorola EX-series, Motorola WX-series
						- Fly Q420/E176, Huawei G7010/G6150 cable
						- Huawei G7007/G6603 cable
						- Mini USB cable for Alcatel OT-series, Motorola WX-series
						- Motorola EX108/EX116 cable
		- Dongles only have a SIM Card slot for authentication, and they only support USB connections through the PC
		- If you need to work with the hardware using the COM Port or JTAG TAP (e.g. dead phone), you need a box
		- If you have a working phone and only need USB connectivity, you can use a dongle
		- **Divisions**
			- Ultimate Boxes/Dongles (Supports All Devices)
			- Speciality Boxes/Dongles (Supports Specific Devices)
			- General Boxes/Dongles (Supports Most Devices)
		- **Example**
			- Universal Flashing Interface (UFi) Box Series
				- UFi Box eMMC Service Tool (Only supports eMMC)
				- UFi Dongle (Dongle version of UFI Box)
				- UFi UFS Prog (Add-on for UFi Box with UFS support)
			- EasyUnlocker Products
				- EFT Dongle
				- EFT Pro Tool (no Dongle)
	- Software Dongles
		- They use software for interacting with firmware, and it is paid for online
		- They could also be freeware or free software
- Dead Boot Sequence
- IC / Buck / LDO Datasheet
- Carrier Unlock Tools
	- R-SIM VSOP Card
		- It is like a SIM card, used to unlock iPhone devices
- SoC Specific Stuff (referenced mostly from MediaTek)
	- Dump File
	- Scatter File
	- Partitions and Firmware Images
		- Note Sources
			- 1. [Understanding MTK Chipset and Android Partition | Scribd](https://www.scribd.com/document/694623190/Understanding-MTK-Chipset-and-Android-Partition)
			- 2. [Answer to "Why are Android devices more brickable than PCs?" | Android StackExchange](https://android.stackexchange.com/questions/205072/bootloader-bios-flashing-roms-and-related-risks-why-are-android-devices-more-b/205552#205552)
			- 3. [[INFO] BOOT PROCESS: ANDROID vs. LINUX | XDA Forums](https://xdaforums.com/t/info-boot-process-android-vs-linux.3785254/)
			- 4. [[INFO] ANDROID DEVICE PARTITIONS and FILESYSTEMS](https://xdaforums.com/t/info-android-device-partitions-and-filesystems.3586565/)
			- 5. [MediaTek details: SoC startup | Sturmflut's Blog](https://sturmflut.github.io/mediatek/2015/07/02/mediatek-details-soc-startup/)
				- Moved to: [MediaTek details: SoC startup | LIEBERBEIBER](https://www.lieberbiber.de/2015/07/02/mediatek-details-soc-startup/)
			- 6. [MediaTek details: Partitions and Preloader | Strumflut's Blog](https://sturmflut.github.io/mediatek/2015/07/04/mediatek-details-partitions-and-preloader/)
				- Moved to: [MediaTek details: Partitions and Preloader | LIEBERBEIBER](https://www.lieberbiber.de/2015/07/04/mediatek-details-partitions-and-preloader/)
			- 7. [MTK Platform Partition Meaning | GitHub Gists](https://gist.github.com/sadiqsalau/865364b344c0b9cb1b418df8bbb51804)
				- Originally from (probably): [dead link to GSM Nigeria Developers forum before renovation](https://developers.gsmnigeria.com/Thread-MTK-platform-partition-meaning)
					- According to: 8. [what are the all image in a mtk rom | GSM-Forum](https://forum.gsmhosting.com/vbb/f781/what-all-image-mtk-rom-1897623/) (also a reference)
				- Mentioned in: [[Android Partitions]]
		- Quick Notes
			- From Reference 1
				- Boot ROM resides outside eMMC
				- PreLoader resides in eMMC, in boot1
			- From Reference 4
				- There are core AOSP partitions and device-specific partitions
			- From Reference 8
				- Scatter File gives the locations to flash each image in the ROM archive
				- Preloader communicates with the PC, and can be used to flash firmware when bricked
					- It has different states, like the META mode
					- Don't flash Preloader if you're unsure that it is the correct one
					- Wrong Preloader can hard brick your device
				- Boot partition image contains the kernel and initial RAM disk
## Types of Tools
### Hardware/Software NAND Programmer Tools (for SoC/Device Firmware Flashing)
### Software Only NAND Programmer Tools (for SoC/Device Fimrware Flashing)
### IMEI Calculator Tools
### SIM Unlock Tools
### Schematics Tools

## Schematics Tools

| Schematics Tools                            | Votes (by GSM-Forum in 2021) | Vote Percentage |
| ------------------------------------------- | ---------------------------- | --------------- |
| Borneo Schematics 1/2                       | **152**                      | 69.41%          |
| PragmaFix                                   | 30                           | 13.70%          |
| ZXW Tool                                    | **23**                       | 10.50%          |
| WuXinJi Schematics                          | **6**                        | 2.74%           |
| DZKJ PhoneRepair Tools                      | **5**                        | 2.28%           |
| XinZhiZao (XZZ) Maintenance Inquiry System  | **2**                        | 0.91%           |
| Combinett Pro                               | **1**                        | 0.46%           |
| ESTECH Schematics                           | Unlisted / New / Old         |                 |
| JCProgrammer JCID Schematics                | Unlisted / New / Old         |                 |
| Nusantara Schematics                        | Unlisted / New / Old         |                 |
| Universal Firmware Schematic Room (UFSRoom) | Unlisted / New / Old         |                 |
| Siemens PADS                                | Unlisted / New / Old         |                 |
## Unlock Boxes
Those listed below, plus
- Pandora Box
- GCPro
- Nusantara UnlockTool
- KEY-Tool
- DeziBypass CF Tools
## Files
- boot.img
- vbmeta.img (newer ROMs)
- recovery.img 
- system.img

**Terms**
- AP: Android Processor (system + recovery)
	- PDA: same as AP
- BL: Boot Loader (boot)
- CP: Core Processor (Modem)
	- Phone: same as CP
- CSC: Consumer Software Customization (Carrier Branding, etc. for the region)
- PIT: Partition Information Table 
## Partitions

**General**

| Partition Mount     | Partition Name                                           |
| ------------------- | -------------------------------------------------------- |
| /system             | Android System                                           |
| /data               | Application Data                                         |
| /data/media/0       | Internal Storage                                         |
| /data/media/UUID    | External Storage                                         |
| /storage/emulated/0 | Internal Storage (User Facing Symlink to Emulated Mount) |
| /storage/UUID       | External Storage (User Facing Symlink to Emulated Mount) |
| /boot               | Boot                                                     |
| /recovery           | Recovery                                                 |
| /cache              | Cache                                                    |
| /misc               | Miscellaneous                                            |

**Custom OS Specific**

| Partition Mount | Partition Name              | Available in                   |
| --------------- | --------------------------- | ------------------------------ |
| /sd-ext         | Application Data (External) | Custom ROMs, with App2SD, etc. |
### About Storage Partition Mounts

The storage partitions on Android are emulated using FUSE or SDCardFS before it can be accessed by the Java apps, Android services, or MTP. This is because the internal storage is usually of the ExFAT or F2FS filesystems, which may not be understood by MTP devices for example.

Emulation was also required because early devices were short on internal storage, and the External SD Card which they relied on would become unavailable when connected to PC as USB Mass Storage. The External SD Cards supported FAT to maintain compatibility with most desktop computers (due to Microsoft dominance). When the internal storage grew, Android shifted the use of External SD to Internal SD, along with the FAT/vFAT filesystem.

A problem with USB Mass Storage was that, it would expose the device at the block level, and that would disconnect the storage from the device, removing many functionalities.

- Emulation of storage was added in Android 3.0.
- Emulation used to be based on SDCardFS, but as of Android 11, it was replaced with a FUSE filesystem leveraging several Linux kernel features to achieve the same functionality without certain drawbacks.
	- SDCardFS suffered from race conditions
	- It requires additional patches to the VFS to keep up with changing bind mount options.
	- Its functionality can now be replaced with upstream components.
	- SDCardFS offers only direct storage access, and does not support scoped storage access added in Android 10.


> [!NOTE] Adoptive Storage
> From Android 6.0, Android supports the use of external SD cards to extend internal storage. This functionality is called Adoptive Storage. An SD card using adoptive storage is wiped initially, formatted with EXT4 or F2FS and is encrypted.
> 
> - It uses GPT instead of MBR like traditional storage, and hence, its storage capacity goes up to 9 ZB.
> - With Adoptive Storage, the unified internal storage is mounted at `/mnt/expand/[UUID]/media/0` rather than at `/data/media/0`

#incomplete 

- /sdcard 
	- Before Android 4.0:
		- **User Facing Symlink: Under /sdcard ==\[Internal Storage\]==**
		- /sdcard (SYMLINK)
			- **Symlink: Under /mnt/sdcard ==\[Internal Storage\]**
			- /mnt/sdcard
				- ...
					- **Real Path: Under /data ==\[All Disks\]
					- /data/media
	- Android 4.0:
		- **User Facing Symlink: Under /sdcard ==\[Internal Storage\]==**
		- /sdcard (SYMLINK)
			- **Symlink: Under /storage**
			- /storage/sdcard0
				- ...
					- **Real Path: Under /data**
					- /data/media
		- /mnt may still have symlinks to /storage
			- Internal: /mnt/sdcard0
			- SD Card: /mnt/sdcard1
			- USB: /mnt/media_rw/usbdisk, /mnt/usbdisk, etc.
	- Android 5.0
		- **User Facing Symlink: Under /sdcard ==\[Internal Storage\]==**
		- /sdcard (SYMLINK)
			- **Symlink: Under /storage**
			- /storage/emulated/legacy (SYMLINK)
				- **Subfolder: Under /mnt/shell  ==\[Internal Storage\]==**
				- /mnt/shell/emulated/0 (SUBFOLDER)
					-  **Emulated Mount: Under /mnt/shell  ==\[All Disks\]
					- mnt/shell/emulated (EMULATED)
						- **Real Path: Under /data ==\[All Disks\]==**
						- /data/media (ROOT)
	- Android 6.0
		- 1. For (Java) Android apps (running inside Dalvik/ART VM) (VIEW = read/write)
			- **NOTE**: "/storage to VIEW" bind mount is inside a separate mount namespace for every app
			- **User Facing Symlink: Under /sdcard ==\[Internal Storage\]==**
			- /sdcard (SYMLINK)
				- **Subfolder: Under /mnt/user ==\[Internal Storage\]
				- /storage/self/primary (SUBFOLDER)
				- **Bind Mount: Under /storage ==\All Disks (Probably)\]==**
				- /storage/self (BIND MOUNT)
					- **Parent Folder: Under /mnt/user ==\[All Disks (Probably\*)\]==**
					- /mnt/user/USER-ID (PARENT FOLDER)
					- **Symlink: Under /mnt/user ==\[Internal Storage\]==**
					- /mnt/user/USER-ID/primary (SYMLINK)
						- **Subfolder: Under /storage ==\[Internal Storage\]==**
						- /storage/emulated/USER-ID (SUBFOLDER)
						- **Bind Mount: Under /storage ==\[All Disks\]
						- /storage/emulated (BIND MOUNT)
							- **Emulated Mount: Under /mnt/runtime ==\[All Disks\]==**
							- /mnt/runtime/VIEW/emulated (EMULATED)
								- **Real Path: Under /data ==\[All Disks\]==**
								- /data/media (ROOT)
		- 2. For Services/Daemons/Processes in Root/Global namespace (VIEW = default)
			- **User Facing Symlink: Under /sdcard ==\[Internal Storage\]==**
			- /sdcard (SYMLINK)
				- **Bind Mount: Under /storage ==\[Internal Storage\]==**
				- /storage/self/primary (SUBFOLDER)
				- /storage (BIND MOUNT)
					- **Symlink: Under /mnt/runtime ==\[All Disks (Probably\*)\]==**
					- /mnt/runtime/default (PARENT FOLDER)
					- **Symlink: Under /mnt/runtime ==\[Internal Storage\]==**
					- /mnt/runtime/default/self/primary (SYMLINK)
						- **Symlink: Under /mnt/user ==\[Internal Storage\]==**
						- /mnt/user/USER-ID/primary (SYMLINK)
							- **Bind Mount: Under /storage ==\[Internal Storage\]==**
							- /storage/emulated/USER-ID (SUBFOLDER)
							- **Bind Mount: Under /storage ==\[All Disks\]==**
							- /storage/emulated (BIND MOUNT)
								- **Emulated Mount: Under /mnt/runtime ==\[All Disks\]==**
								- /mnt/runtime/default/emulated (EMULATED)
									- **Real Path: Under /data ==\[All Disks\]==**
									- /data/media (ROOT)

\* Because /self/primary is a subfolder under both /storage and /mnt/runtime/default pointing to the internal storage.
## General Data Points
| Mount                  | Data                                                                       |
| ---------------------- | -------------------------------------------------------------------------- |
| /boot                  | Linux Kernel and Initial RAM Disk                                          |
| /system                | Main ROM Files                                                             |
| /data/data             | Application Data                                                           |
| /data/media            | Media Data                                                                 |
| /data/media/0          | Internal Storage                                                           |
| /data/media/UUID       | SD Card                                                                    |
| /storage/emulated      | User Facing Symlink to a Bind Mount of the SDCardFS Emulated Storage Space |
| /storage/emulated/UUID | User Facing Symlink to a Bind Mount of the SDCardFS Emulated Storage Space |
## How to dump boot.img
- Dump it from payload.bin (see video tutorial from XDA)
- Use `vm03/payload-dumper`
- Use `ssut/payload-dumper-go`
## How to dump firmware
- NANDroid Backup
- Dump it with SoC Tooling (MTKClient)
## How to unlock bootloader 
- Method 1: Use SoC tooling to unlock bootloader by using exploits
	- e.g. MTKClient (erase data first), MTK Booloader Unlocker (doesn't lose data)
- Method 2: Use official tooling to unlock bootloader
	- e.g. Xiaomi Mi Unlock Tool (lose data + wait 1 week)
- Method 3: Obtain official unlock code and unlock via fastboot
	- e.g. Contact Infinix Service Center
## How to bypass encryption and other protections
- DM-Verity
	- It's a Linux kernel security feature to verify if a block read from a block device contains a specific hash.
	- DM stands for Device Mapper
	- It uses a tree of SHA256 hashes to verify blocks as they are read from a block device to ensure that files have not changed between reboots or by unauthorized modifications.
	- DM-Verity by itself does not encrypt, and it only shows a 5s warning that can be skipped, if files are modified
- FS-Verity
	- An alternative to DM-Verity in BTRFS
- ForceEncrypt
	- It's of two types
		- **Full Disk Encryption (FDE)** (Android 5.0+)
			- It is based on DM-Crypt, another Linux feature
		- **File Based Encryption (FBE)** (Android 7.0+)
			- It is based on `fscrypt`, a ButterFS innovation
			- In FBE, different files can be encrypted with different keys
			- Mainly, It introduced Direct Boot API and two types of encrypted storage
			- Direct Boot boots the system directly to the Lock Screen
			- With Direct Boot API, apps can store data in Credential Encrypted (CE) storage or Device Encrypted (DE) storage
			- CE storage is the default and it only lets you access files after the user has unlocked the Lock Screen
			- DE storage lets you access files during Direct Boot itself
			- **Metadata Encryption** (Android 9.0+)
				- It encrypts the metadata that is not encrypted by FBE
	- It is mandatory for all devices from Android 10.0 to use FBE
- DM-Verity Storage
	- Android Verified Boot (AVB) makes use of dm-verity to prevent booting of unauthorized partitions
	- VBMeta stands for Verified Boot Metadata, and it contains the hashes required for dm-verity
	- Older Android versions store dm-verity data in boot.img
	- Newer Android versions store DM-Verity metadata in vbmeta.img
- Disable Verity ZIPs
	- It only have to be flashed on devices that do not come with a vbmeta.img
	- no-verity-opt-encrypt
		- Disables DM-Verity
		- From the LazyFlasher project
	- no-verity-force-encrypt
		- Disables DM-Verity and ForceEncrypt
		- From the LazyFlasher project
	- Disable_DM-Verity-ForceEncrypt
		- Disables DM-Verity and ForceEncrypt
- Disable Verity in vbmeta.img
	- `fastboot --disable-verification --disable-verity flash vbmeta vbmeta.img`
	- Or, as I've learned, flashing a blank vbmeta.img is another solution
- Factory Reset Protection (FRP)
	- It is used to prevent others from using your device after factory resetting it
	- You can disable it by wiping the FRP partition
- **Samsung Knox Guard (KG) / Remote Monitoring and Management (RMM)**
	- RMM-State-Bypass-v3
- **Samsung Knox**
	- **Knox Verified Boot (KVB)**
		- It handles both Secure Boot (Bootloader) and AVB (Kernel + Android Part)
		- Specifically, it checks the Bootloader and Kernel
		- It has two components
			- **Samsung Trusted Boot**
				- Same as Secure Boot / AVB, but with Samsung additions
				- Secure Boot keys are stored in Samsung Secure Boot Certificate chain
				- Trusted Boot takes snapshots during boot, and stores them in TrustZone Trusted Execution Environment (TEE)
					- Trusted Boot ensures older bootloaders cannot boot as part of the Rollback Prevention process (Same as AVB Rollback Protection)
					- TrustZone Trustlets check the snapshots while a system is booting to check for bootloader versions
			- **Samsung TIMA (TrustZone Integrity Management)**
				- Same as DM-Verity kernel integrity checking, but with Samsung additions
				- Samsung’s TIMA runs inside the TrustZone TEE, which provides a wide variety of security services, including attestation, a trusted user interface, KeyStore, Client Certificate Management and two components that are part of the TIMA real-time protections:
					- **Samsung Real-time Kernel Protection (RKP)**
					- **Samsung Periodic Kernel Measurement (PKM)**
						- It finds whatever RKP misses
	- **Samsung DEFEX (Defeat Exploit)**
		- This is for app protection
## How to root device
- You need to flash the missing SU file
- You'll need a custom recovery, or just flash a patched boot.img with Magisk
## How to install XPosed Framework
- You install it from a custom recovery
## How to install Magisk
- You install it from a custom recovery, or by flashing a patched boot.img
## How to install GApps
- You install it from a custom recovery
## How to install GCam Mod
- Download the right GCam Mod for your Model/SoC
- Find the right config files for your device
## How to bypass Play Protect
- Do it with Magisk
## How to change IMEI
- What is IMEI?: [[IMEI|IMEI]]
## How to copy files using ADB
## How to backup app data (using ADB?)
- `adb backup -apk -shared –all –f D:/backup.ab`
	- ADB doesn't support saving data for all apps
- Guide: https://gist.github.com/AnatomicJC/e773dd55ae60ab0b2d6dd2351eb977c1
	- Method 1: Pulling base.apk and renaming them with sed
	- Method 2: `adb backup` backup
	- Method 2: `bu backup` backup
	- 
## How to perform a system backup (NANDroid backup)
## How to backup app data (with root, using third-party apps)
## How to restore apps
- https://github.com/joshuabragge/twrp-manual-restore
- Permissions: https://android.stackexchange.com/questions/236131/restore-data-of-a-specific-app-from-a-twrp-backup
## How to flash a new ROM
- Recovery ROM
	- To be flashed from Recovery
	- Extension: .zip
- Fastboot ROM
	- To be flashed from Fastboot
	- Extension: .tgz
# OEM Stuff
## General Recovery
### Xiaomi MiAssistant (formerly Mi PC Suite)
## Download Mode / Fastboot Mode / Bootloader Mode
### Samsung Odin / Heimdall
## Protection Mechanisms
### Samsung KNOX
# SoC Specific Tools
## Download Mode
### MTKClient
- BROM Mode: Boot ROM Mode
	- BROM Loads the PreLoader, which loads Android
	- BROM also has a hidden download mode, which we'll use to flash files
- PreLoader Mode
	- One crashes PreLoader to get to BROM
	- This can be done using MTK Auth Bypass / MTKClient / MTK META Utility (AndroidUtility)
- DA: Download Agent
- xflash
### MTKClient GUI

## Unlock Boxes / Dongles (a.k.a. GSM/CDMA Boxes/Dongles) 
Most of them have a SIM, and require recharge (except Aqua, which is forever free).

Basically, the SIM is to verify software credits.

- Dongles use their own vendor software tools (UMT Tool, Hydra Tool, etc.)
- They can be used to:
	- Calculate Unlock Codes by IMEI (Online / Offline)
	- Get Device Info
	- Flash Firmware
	- Read Codes (Network Unlock, User Unlock, Patterns/PIN)
	- Direct Unlock (After Maximum Tries)
	- Remove Locks (After Erasing Data)
	- Repair IMEI
### Aqua Dongle [Rs. 4000, Basic]
### NCK Dongle [Rs. ]
### NCK Pro Dongle [Rs. ]
### Ultimate Multi Tool (UMT) Dongle [Rs. 3000]
### Ultimate Multi Tool (UMT) Pro Dongle [Rs. 4000]
### Ultimate Multi Tool (UMT) GSM Shield Box (GSB) [Rs. ]
### Ultimate Multi Tool (UMT) Avengers Box (AVB) [Rs. ]
### MRT Dongle [Rs. ]
### Hydra Dongle [Rs. ]
### Infinity Box [Rs. ]
## Software Only
### DC Unlocker
### HUC Client [Huawei HiSilicon / Qualcomm SoCs]
### DC Phoenix
## Bypass Download Mode Protection
Since MediaTek's BROM mode gives low level access to files, OEMs like Xiaomi and Realme started obfuscating the process of getting to BROM mode. This way, we can only access the Download Mode using signed Download Agents.
### Universal MTK Tool (UMT)
- Helps bypass SLA (Serial Link Authentication), DAA (Download Agent Authentication) and SBC
- Without this, one would need to supply an AUTH file to use SP Flash Tool
### MTK Auth Bypass
- It works based on an exploit, called Kamakiri [(see here)](https://www.xda-developers.com/bypass-mediatek-sp-flash-tool-authentication-requirement/).
- It sets SLA and DAA to 0 during the PreLoader stage
- For this, you need a tweaked USB driver
- In Windows, you need a libusb-based filter driver (UsbDk), and in Linux, you need a kernel patch
- Features
	- Read mobile phone information in ADB/Fastboot Mode
	- Read Partition Information
	- Read, Write or Reset NVRAM
	- Unpacking OFP format firmware for Oppo MTK chip
	- Remove VIVO Demo Mode
	- Wait for functions
### Samsung FRP Removal Tool
## Flash Utility
- MediaTek SP (SmartPhone) Flash Tool
- Qualcomm EDL (Emergency Download Mode) 
# Drivers
- For SoC USB Interfaces (like the MTK Exploit)
	- SoC USB Interface Driver
		- Option 1: Vendor Serial Port (USB VCOM) Driver (RS-232 USB Emulation)
		- Option 2: Windows COM Port Driver (Generic)
	- Advanced USB Driver
		- Option 1: UsbDk Driver (USB Development Kit Driver)
		- Option 2: libusb Filter Driver
		- Notes on libusb vs UsbDk (https://github.com/libusb/libusb/wiki/FAQ#user-content-libusborg_libusbxorg_and_libusbinfo)
- For Vendor USB Interfaces
	- ADB, Fastboot and Recovery
		- Vendor USB ADB Interface Driver
		- Other USB ADB Interface Drivers
			- Google (Universal) ADB and Fastboot Driver (platform-tools)
			- Minimal ADB and Fastboot Driver (unmaintained)
			- Tiny ADB and Fastboot Driver (same as Google USB Driver)
	- MTP/PTP USB Driver (Generic Driver shipped in the OS)


> [!NOTE]
> I had to install the Xiaomi USB drivers (unsigned) in test signing mode to get Fastboot and ADB to work on my POCO.


#todo
**Organizing Tabs**
- How to perform ADB Backup
- Android Partition Table



