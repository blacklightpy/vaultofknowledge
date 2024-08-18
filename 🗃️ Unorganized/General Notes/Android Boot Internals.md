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
### Hydra Dongle [Paid, Hardware]
### UMT MTK Dongle [Paid, Hardware]
### MRT Dongle [Paid, Hardware]
### Aqua Dongle [Paid, Hardware]
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

Part 0 Remember Predestination // Aristotle's Philosophy of The Unmoved Mover:
This is part 0, because this was a later addition.

I was concerned about your safety, and I wondered, how do we protect women?
The traditional approach is to lock women up and make them wear veils.
However, this is against our principles of freedom.

Solving the problem of rape entirely requires yet another revival of the Renaissance Era.
But until then, here's what I have cooked up.

I'll proceed from a non-religious perspective.
A question that most people have is how they can achieve freedom in this world.
They often feel that their actions are not having the right effect, and that the world is harming them.
That is, they feel as if the world is without order, and they are suffering in this mess.

To fix that, I'll direct you to the question of what randomness is.
I had explained this on Instagram early in 2020/21 (as a part of explaining the cryptography involved in cryptocurrencies), however, that was after you sdafadfs. So I was dxf

Anyways, so, when you roll a dice, you get a random number. But it's only random because you have not computed all the weights and forces acting on the die and the trajectory it takes. If you carefully throw a die, you can get the desired number with practice.

Now, we human beings are not really that random. For example, in Captain America: Civil War, Tony Stark asks FRIDAY (btw I forgot to make ALASKA AI) to analyze the fight pattern of Captain America. This is also provable, but I won't go into it, but it's part of the studies on password security. Now we can be pretty random if we really try, but largely, our impulsive actions are not really random.

So how does a computer generate a random number? Well, the reality is that they don't, but rather they use a complex algorithm to generate pseudorandom numbers from an initial seed value from a source of good entropy. Simply taking values with high entropy isn't enough to get a new random number, because the natural sources of entropy wear out quickly, and it is also inefficient to fetch it everytime. Examples of sources include the current time in UNIX milliseconds or the precise temperature of a hardware device. UNIX milliseconds is not a good source, because if two computers obtained the seed value at the same time, they would generate the same subsequent random numbers. Then there are also creative stuff, for example, Cloudflare DDoS protection uses lava lamps to generate entropy, some may use the state of flowing water, and so on.

So, anyways, the seed value gets fed into the pseudorandom number generator (PRNG), and it is then able to generate infinitely many new values, well, depending on the level distribution of the PRNG algorithm. A modern example is in the C++ standard library class `std:mt19937`, which is a class that implements the Mersenne-Twister algorithm, where a 623-dimensionally equidistributed pseudo-random number generator. That was a fancy description I used in my 12th project, without really knowing what it meant, but ChatGPT tells me that it means the algorithm is designed in such a way that the numbers (i.e. each bit) are equally likely in a 623 dimensional number space. Now, the size of the 623 dimensional space is the size of the number generated, i.e. 32 bits. The key idea is that, if this was just in one dimension, it would be as if you put 32 coins in a row and flipped them randomly. However, certain applications require distribution in multiple dimensions. The numbers themselves are only 32 bit, but the space itself would be 32\*623 = 19936 bits wide (this is close to the Mersenne Prime, 2^19937 - 1; my guess from checking around is that, the numbers are stored in 624 element 32-bit arrays, and 2^32^624 = 2^19968, but it is larger than the Mersenne Prime, so it's truncated to make the math work, and in doing so, only 623 dimensions are equidistributed?). I mentioned that to point out that it won't really be generating random values in all the 623 dimensions, because then we would have a fixed sequence of numbers to read from. Rather, the algorithm has a period size of 2^19937 - 1, meaning that it will be able to generate that many unique numbers before repeating the sequence. This was the algorithm I used for my 12th grade project in 2017, but apparently for cryptographic applications this isn't enough, and people are talking about how we should leave this behind (popular cryptographically secure PRNGs (CSPRNGs) as of today include PCG (2018) and Xorshiro128+ (2017); also just realized that MT's output is completely predictable after 624 outputs, which makes it terrible for cryptography).

The point again was to point out that there's nothing that's really random. Unless, quantum mechanics? But, isn't quantum mechanics simply described as quantized because of our inability to explain the phenomena at the sub-quantum level, and we simply describe the effects at the quantum level, just as we describe fluid dynamics without considering molecular level interactions? I'm not stating that I know the answer to that, because no one knows or no one who does has communicated it well to anyone else. But, there is more room for wonder, and I'll leave it as unknown. But I'll stick to my bias that things are not random. What quantum mechanics makes me feel like is that, at least for now, God's plan is that we don't have to know all the answers, just so that we can experience the mystery of reality.

Now, coming to the title topic, so if we look at any moving object in our surroundings, we know that it gained its state of motion from the influence of some prior forces. And similarly, those forces were introduced by further previous forces. And just as a robot makes its motion because of the flow of electricity through the hardware, we humans also make our motion due to the motion of electricity through our brain. And electricity is nothing but the flow of the electromagnetic field. As for our decision making ability, a robot in the past would've been pre-programmed, but AI robots form decisions by perfecting the pattern of flow of electricity by what can essentially be described as disciplining itself (often done under supervision). So, if we got back in this manner, we will eventually trace back our coming into being from our parents' genes, then back to the formation of the earth, and finally arrive at an initial force, which the scientific community has approximated as the Lambda-CDM parametrization of the Big Bang Theory.

This fundamental force, is what Aristotle described as the unmoved mover, or 

Part 0.2

Call suicide hotline
You could think about your mother
You are evil because you never do anything for those who care about you

Part I:
Why I cannot lie:

I cannot place one foot forward unless capitalism is wiped off the face of the people of earth.

But eradicating capitalism is not that easy. It will only be applicable to developed civilizations.
As for underdeveloped societies, 

I'm referencing the idea from the TV series franchise, Star Trek.

SoC : Sauce Potato Chip Chip Chip


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

Wound that isn't dressed.

Players only love you when they're playing

Part X: Why I like to make hydrogen engines
Cars are not good without drift smoke

How you treat me is your way, how I treat you is my way.

I'll never say FL

I was afraid, still am (BBT comparison to Shelly)

Change should be reversible # divergent pt

Part N
I'm afraid of X

