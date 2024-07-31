- System Mode
- Fastboot Mode / Download Mode
- Recovery Mode
## Files
- boot.img
- recovery.img
- system.img
## Partitions

**General**

| Partition Mount     | Partition Name                                                    |
| ------------------- | ----------------------------------------------------------------- |
| /system             | Android System                                                    |
| /data               | Application Data                                                  |
| /data/media/0       | Internal Storage                                                  |
| /data/media/UUID    | External Storage                                                  |
| /storage/emulated/0 | Internal Storage (User Facing Symlink to SDCardFS Emulated Mount) |
| /storage/UUID       | External Storage (User Facing Symlink to SDCardFS Emulated Mount) |
| /boot               | Boot                                                              |
| /recovery           | Recovery                                                          |
| /cache              | Cache                                                             |
| /misc               | Miscellaneous                                                     |

**Custom OS Specific**

| Partition Mount | Partition Name              | Available in                   |
| --------------- | --------------------------- | ------------------------------ |
| /sd-ext         | Application Data (External) | Custom ROMs, with App2SD, etc. |
### About Storage Partition Mounts
- /sdcard 
	- Before Android 4.0:
		- /sdcard (SYMLINK)
			- /mnt/sdcard
				- ...
					- /data/media
	- Android 4.0:
		- **User Facing: Under /sdcard**
		- /sdcard (SYMLINK)
			- **Bind Mount (?): Under /storage**
			- /storage/sdcard0
				- ...
					- **Real Path: Under /data**
					- /data/media
		- /mnt may have symlinks to /storage
			- Internal: /mnt/sdcard0
			- SD Card: /mnt/sdcard1
			- USB: /mnt/media_rw/usbdisk, /mnt/usbdisk, etc.
	- Android 5.0
		- **User Facing: Under /sdcard**
		- /sdcard (SYMLINK)
			- **Bind Mount (?): Under /storage**
			- /storage/emulated/legacy (SYMLINK)
				- /mnt/shell/emulated/0 (SYMLINK)
					- mnt/shell/emulated (EMULATED)
						- **Real Path: Under /data**
						- /data/media (ROOT)
	- Android 6.0
		- 1. For (Java) Android apps (running inside Dalvik/ART VM) (VIEW = app specific)
			- **NOTE**: "/storage to VIEW" bind mount is inside a separate mount namespace for every app
			- **User Facing: Under /sdcard**
			- /sdcard (SYMLINK)
				- **Bind Mount: Under /storage**
				- /storage/self/primary (SUBFOLDER)
				- /storage/self (BIND MOUNT)
					- **Symlink: Under /mnt/user**
					- /mnt/user/USER-ID (PARENT FOLDER)
					- /mnt/user/USER-ID/primary (SYMLINK)
						- **Bind Mount: Under /storage**
						- /storage/emulated/USER-ID (SUBFOLDER)
						- /storage/emulated (BIND MOUNT)
							- **SDCardFS Emulation: Under /mnt**
							- /mnt/runtime/VIEW/emulated (EMULATED)
								- **Real Path: Under /data**
								- /data/media (ROOT)
		- 2. For Services/Daemons/Processes in Root/Global namespace (VIEW = default)
			- **User Facing: Under /sdcard**
			- /sdcard (SYMLINK)
				- **Bind Mount: Under /storage**
				- /storage/self/primary (SUBFOLDER)
				- /storage (BIND MOUNT)
					- **Symlink: Under /mnt/runtime ==\[Probably All Disks\]==**
					- /mnt/runtime/default (PARENT FOLDER)
					- /mnt/runtime/default/self/primary (SYMLINK)
						- **Symlink: Under /mnt/user ==\[Internal Storage\]==**
						- /mnt/user/USER-ID/primary (SYMLINK)
							- **Bind Mount: Under /storage ==\[Internal Storage\]==**
							- /storage/emulated/USER-ID (SUBFOLDER)
							- /storage/emulated (BIND MOUNT)
								- **SDCardFS Emulation: Under /mnt ==\[All Disks\]==**
								- /mnt/runtime/default/emulated (EMULATED)
									- **Real Path: Under /data**
									- /data/media (ROOT)
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
- dm-verity
- dm-verity-no-opt
- RMM-Bypass
- FRP
- FDE/FBE Encryption
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