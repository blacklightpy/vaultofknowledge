- TeamWin Recovery Project (TWRP) [Features: ] 
- ClockWorkMod (CWM) ROM Manager [Features: ] (Mar 2010, by Koushik Dutta)
- OrangeFox Recovery Project (OFRP) (synced with TWRP) [Features: Password, MIUI OTA] (Apr 2018, for mido, inspired by RedWolf, originally called OrangeWolf in Apr 2)
- PitchBlack Recovery Project (PBRP) (fork of TWRP 3.7.0) [Features: Password, MIUI OTA, Modules] (Mar 2018)
- SkyHawk Recovery Project (SHRP) (synced with TWRP) [Features: Password, MIUI OTA, Cool Theme, Black/Dark/White variants, Modules] (Feb 2019)
- RedWolf Recovery Project (RWRP) (synced with TWRP) [Features: Password, MIUI OTA, Red/Black Theme] (Aug 2017, for mido)

- Other:
- Batik Recovery Project (BRP)
- Carliv Touch Recovery (CTR)
- Philz Touch 6 / CWM Advanced 6 (dead)
- EXT4 Recovery (old)
- RootZ Wiki Recovery

Koushik Dutta made CWM ROM Manager, Universal ADB Driver
Google made Apps2SD
## Backup Utilities
- NANDroid Backup (Only backups system and app data)
	- e.g. TWRP Backup, OFRP Backup
	- NANDroid backups are dead, since the introduction of forced encryption (FBE and FDE) since Android 7.0 Nougat, and it is forced on since Android 10 and A/B Partitions for seamless updates (which too seem to be forced form Android 13).
		- Now after a factory reset, there is no way to decrypt the backup
		- FDE is the black screen with passport (My POCO M4 Pro 4G (`fleur`) doesn't have it by default)
		- Check for encryption
			- `adb shell getprop ro.crypto.state`
			- It will return `encrypted` or `unencrypted`
		- Check if the encryption is FDE or FBE
			- `adb shell getprop ro.crypto.type`
			- If it returns `file`, it's FBE. If it returns `block`, it's FDE.
		- Android 9 onwards, there is also Metadata encryption
		- FDE is supported only from Android 5.0 Kitkat - 9.0
	- Some implementations in TWRP and OFRP can still do this in Android 13 and 14
	- I saw some OFRP with support for Metadata encryption
- Titanium Backup
- Neo Backup
- Migrate (A custom ROM migration tool)
### Tools to check
- PartitionBackupper NO ROOT (Nandroid alternative): https://xdaforums.com/t/tool-no-root-partitionsbackupper-nandroid-alternative.4366055/