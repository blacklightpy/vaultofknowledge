- System Mode
- Fastboot Mode / Download Mode
- Recovery Mode
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
> It uses GPT instead of MBR like traditional storage, and hence, its storage capacity goes up to 9 ZB.
> -`/mnt/expand/[UUID]/media/0`

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
## How to dump firmware
## How to unlock bootloader
## How to bypass encryption
- DM-Verity
	- It's a Linux kernel security feature to verify if a block read from a block device contains a specific hash.
	- DM stands for Device Mapper
	- It uses a tree of SHA256 hashes to verify blocks as they are read from a block device to ensure that files have not changed between reboots or by unauthorized modifications.
	- DM-Verity by itself does not encrypt, and it only shows a 5s warning that can be skipped, if files are modified
- FS-Verity
	- An alternative to DM-Verity in BTRFS
- ForceEncrypt
	- 
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
- RMM-Bypass
- FRP
- FDE/FBE Encryption
- Samsung Knox
	- Samsung RKP (Realtime Kernel Protection)
		- This is the Samsung equivalent of AVB/dm-verity or Secure Boot 
	- Knox Verified Boot (KVB)
	- Samsung DEFEX
	- TrustedBoot
	- TrustZone Integrity Management
## How to root device
## How to install XPosed Framework
## How to install Magisk Manager
## How to install GApps
## How to install GCam Mod
## How to bypass Play Protect
## How to change IMEI
## How to copy files using ADB
## How to backup app data (using ADB?)
## How to perform a system backup (NANDroid backup)
## How to backup app data (with root, using third-party apps)
# OEM Stuff
## General Recovery
### Xiaomi MiAssistant (formerly Mi PC Suite)
## Download Mode
### Samsung Odin / Heimdall
## Protection Mechanisms
### Samsung KNOX
# SoC Specific Tools


Why I cannot lie:

I cannot place one foot forward unless capitalism is wiped off the face of the people of earth.

But eradicating capitalism is not that easy. It will only be applicable to developed civilizations.
As for underdeveloped societies, 

I'm referencing the idea from the TV series franchise, Star Trek.


But there is major difference between my philosophy and Marx's:
Marx said that the labour relationships and means of production form the base of the society, while religion forms the superstructure.

However, in my philosophy, feelings form the base of the society. From feelings, we create language. And from language, we build a civilization. And to set order to the civilization, we build religion. (Feelings -> Language -> Civilization -> Religion).

Proto-Indo-European -> Indo-Iranian (Aryan) -> Avestan Gathas (Persia), Sanskrit Vedas (India) e.g. Dyaus / Dyaus Pitr
Proto-Indo-European -> Proto-Greek -> Greek (Greece) e.g. Zues / Zeus Pater
Proto-Indo-European -> Proto-Italic -> Latin (Rome) e.g. Jove / Jove Pater (Jupiter)

Another important phenomenon was that, the early Proto-Indo-European religion seemed to have originated with a contrasing daylight sky god (dweys phter) and a dark earth god (dhegom mehter) as his consort. From dweys, we got alongside dyaus, the word daiv, meaning god, and similarly, we got asura from a similar word. We also got mother earth, but from a different word, pletwih, plet being the root for flat. The word being Prithvi. Now the funny part is, the Indo-Iranians, who are recorded to have described themselves as Aryans, split into Indo-Aryans and Iranians. While Indo-Aryans developed Sanskrit Vedas with devas and asuras, Iranians developed Avesatan Gathas where Ashura is the only god, and daivas are demons. This religion was Zoroastrianism as we know today, and the Gathas were written by Zarathustra (Zoroaster). This religion also involved prophets, end times, resurrection of the dead, angels and prohibition of idolatry - something which we are familiar with in Judaism.

So, the reason for the Babylonian Exile and destruction of Solomon's Temple was given as the practice of idolatry in Yisra'el. They were in exile for 70 years, and at the end, it was the First Persian Empire under Cyrus the Great that freed them, and gave them the province of Yehud Medinata. During their time in mix with the Zoroastrians, they were reminded of the importance of monotheism, and seem to have taken ideas from the fellow monotheistic religion. This is the time when they seem to have incorporated ideas of the end days, prophets, etc. into their religion (hearsay, I haven't verified this). The Book of Daniel is the first that begins to talk of the end times (again hearsay, I've not read beyond the Torah / Pentateuch).

Examples in China: Obey The Law (Legalism), Philosophy (They way of Confucius), The Tao
Other Examples: Law (Codex Hammurabi), Law of Religion (Halakha, Shari'ah, Sanatan Dharma), Swiss Civil Code
I don't know much about how laws are made in democracies. I hear that India follows Sanatan Dharma. However, it is not my religion, so I do not know much about it.

Part II Bro's case
Part III I have no option
Part IV My four sins (Apathy, Denial, Lying)