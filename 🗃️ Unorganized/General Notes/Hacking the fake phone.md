Advertised as Android 9 / A9s

ro.build.version.release = 5.1
ro.build.id=LMY47I
ro.build.flavor=full_yuanda6580_we_l-user

ro.product.model=A9s
ro.product.brand=A9s
ro.product.name=A9s
ro.product.device=A9s
ro.product.board=MTK

ro.product.manufacturer=A9s
ro.board.platform=mt6580
\# ro.build.product is obsolete; use ro.product.device
ro.build.product=yuanda6580_we_l
/# do not try to parse description, fingerprint or thumbprint
ro.build.description=full_yuanda6580_we_l-user 5.1 LMY47I 1561359554 release-keys
ro.build.fingerprint=alps/full_yuanda6580_we_l/yuanda6580_we_l:5.1/LMY47I/1561359554:user/release-keys

persisit.sys.timezone=Asia/Shanghai
persist.sys.ram=1
persist.sys.devicememory=1
persist.sys.FrontCamera=3
persist.sys.BackCamera=5

/# end build properties
/#
/# from device/yuanda/yuanda6580_we_l/system.prop
/#
/#
/# system.prop for generic sdk
/#

ro.mediatek.version.release=ALPS.L1.MP6.V2_YUANDA6580.WE.L

mediatek.wlan.chip=CONSYS_MT6735
ro.com.google.gmsversion=5.1
# What we can infer
@@Real Data
- Android Version: 5.1 Lollipop
- Android Build: LMY47I
- Manufacturer (Real): alps
- Device Name (Real): yuanda6580_we_l
- SoC: MediaTek MT6580
- Device Build: ALPS.L1.MP6.V2_YUANDA6580.WE.L
- Battery: 1000 mAh, 3.47V

@@Fake Data
- Manufacturer (Advertised): A9s
- Device (Advertised): A9s
- Name (Advertised): A9s

@@Specs
- RAM: 1 GP LPDDR2
- Internal Storage: 1.61 GB (1.01 GB available to user)
- WLAN Chip: CONSYS_MT6735 (only 2.4 GHz)
- Touchscreen: ft6636_gesture / GT9XX
- Resolution: 1014x480
- Sound: amp_6323pmic_spk
- Lens AF: dw9714af
- Modem: yuanda6580_weg_l_hspa_850_2100_simhotswap
- Camera 0: Sony IMX190 (imx190mipiraw)
- Camera 1: GalaxyCore GC2235 (gc2235mipisubraw) 2.0 MP
- Camera List (Visible 3+1, Listed 6):
	- GC2235
	- GC2385
	- OV9760
	- OV9762
	- IMX190
	- OV5648

@@Miscellaneous Specs
- Codecs: Several codecs from MTK and Google by the OpenMAX (OMX) framework (e.g. OMX.MTK.AUDIO.DECODER.XX)

@@Partitions
### Known Partitions and their Mount Locations

| Name        | Block Name | Mount Location |
| ----------- | ---------- | -------------- |
| proinfo     | mcblk0p1   |                |
| nvram       | mcblk0p2   |                |
| shcy        | mcblk0p3   |                |
| protect1    | mcblk0p4   | /protect_f     |
| protect2    | mcblk0p5   | /protect_s     |
| seccfg      | mcblk0p6   |                |
| lk          | mcblk0p7   |                |
| boot        | mcblk0p8   |                |
| recovery    | mcblk0p9   |                |
| para        | mcblk0p10  |                |
| logo        | mcblk0p11  |                |
| expdb       | mcblk0p12  |                |
| frp         | mcblk0p13  |                |
| nvdata      | mcblk0p14  | /nvdata        |
| metadata    | mcblk0p15  |                |
| oemkeystore | mcblk0p16  |                |
| secro       | mcblk0p17  |                |
| keystore    | mcblk0p18  |                |
| system      | mcblk0p19  | /system        |
| cache       | mcblk0p20  | /cache         |
| userdata    | mcblk0p21  | /data          |
| flashinfo   | mcblk0p22  |                |
### Other File System Mounts
- rootfs (/)
- tmpfs (/dev)
- devpts (/dev/pts)
- adb (/dev/usb-ffs/adb)
- proc (/proc)
- sysfs (/sys)
- selinuxfs (/sys/fs/selinux)
- pstore (/sys/fs/pstore)
- debugfs (/sys/kernel/debug)
- tmpfs (/mnt/asec)
- tmpfs (/mnt/obb)
- loop0 (/mnt/cdrom)
- fuse (/storage/sdcard0)