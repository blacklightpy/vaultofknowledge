- System Mode
- Fastboot Mode / Download Mode
- Recovery Mode
## Files
- boot.img
- recovery.img
- system.img
## Partitions

**General**

| Partition Mount     | Partition Name   | Alternate Mounts              | Remarks                                    |
| ------------------- | ---------------- | ----------------------------- | ------------------------------------------ |
| /system             | Android System   |                               |                                            |
| /data               | Application Data |                               |                                            |
| /data/media/0       | Internal Storage | /storage/emulated/0 (Generic) |                                            |
| /data/media/UUID    | External Storage |                               |                                            |
| /storage/emulated/0 |                  |                               |                                            |
| /storage/UUID       |                  | /sdcard/sd (Samsung)          |                                            |
| /boot               | Boot             |                               | Contains Linux Kernel and Initial RAM Disk |
| /recovery           | Recovery         |                               |                                            |
| /cache              | Cache            |                               |                                            |
| /misc               | Miscellaneous    |                               |                                            |
### About Storage
- /storage/emulated/legacy (Symlink to active user's storage space, probably deprecated in Android 6.0+)
- /storage/emulated/0 (Active user's storage space)
- /sdcard 
	- Before Android 4.0:
		- /sdcard
			- /mnt/sdcard
	- Android 4.0 and above:
		- /sdcard
			- /storage/sdcard0
		- /mnt may have symlinks to /storage
			- Internal: /mnt/sdcard0
			- SD Card: /mnt/sdcard1
			- USB: /mnt/media_rw/usbdisk, /mnt/usbdisk, etc.

- Android 5.0
	- /sdcard (SYMLINK)
		- /storage/emulated/legacy (SYMLINK)
			- /mnt/shell/emulated/0 (SYMLINK)
				- mnt/shell/emulated (EMULATED)
					- /data/media (ROOT)
- Android 6.0
	- For (Java) Android apps (running inside Dalvik/ART VM)
		- NOTE: "/storage to VIEW" bind mount is inside a separate mount namespace for every app
		- /sdcard (SYMLINK)
			- /storage/self/primary (SUBFOLDER)
			- /storage/self (BIND MOUNT)
				- /mnt/user/USER-ID
					- /mnt/user/USER-ID/primary (SYMLINK)
						- /storage/emulated/USER-ID (SUBFOLDER)
						- /storage/emulated (BIND MOUNT)
							- /mnt/runtime/VIEW/emulated (EMULATED)
								- /data/media (ROOT)
	- for services/daemons/processes in root/global namespace (VIEW = default)
		- /sdcard >S> /storage/self/primary
		- /storage >B> /mnt/runtime/default
		- /mnt/runtime/default/self/primary >S> /mnt/user/USER-ID/primary
		- /mnt/user/USER-ID/primary >S> /storage/emulated/USER-ID
		- /storage/emulated >B> /mnt/runtime/default/emulated
		- /mnt/runtime/default/emulated >E> /data/media

**Custom OS**

| Partition Mount | Partition Name              | Available in                   |
| --------------- | --------------------------- | ------------------------------ |
| /sd-ext         | Application Data (External) | Custom ROMs, with App2SD, etc. |
## General Data Points
| Mount            | Data                              |
| ---------------- | --------------------------------- |
| /boot            | Linux Kernel and Initial RAM Disk |
| /data/data       | Application Data                  |
| /data/media      | Media Cache?                      |
| /data/media/0    | Internal Storage                  |
| /data/media/UUID | SD Card                           |
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