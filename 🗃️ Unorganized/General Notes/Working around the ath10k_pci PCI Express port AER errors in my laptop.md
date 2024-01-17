The network card is Qualcomm Atheros QCA9377 (Wi-Fi)
The driver in use is `ath10k_pci` with the corresponding kernel module

PCI slot list, from `lspci` (Available in PCI Utilities, usually included in the OS distribution):
```
$ lspci -v

00:1c.5 PCI bridge: Intel Corporation Sunrise Point-LP PCI Express Root Port #6 (rev f1) (prog-if 00 [Normal decode])
	Subsystem: Acer Incorporated [ALI] Device 1295
	Flags: bus master, fast devsel, latency 0, IRQ 123, IOMMU group 7
	Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
	I/O behind bridge: [disabled] [16-bit]
	Memory behind bridge: b1000000-b11fffff [size=2M] [32-bit]
	Prefetchable memory behind bridge: [disabled] [64-bit]
	Capabilities: <access denied>
	Kernel driver in use: pcieport

02:00.0 Network controller: Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter (rev 31)
	Subsystem: Lite-On Communications Inc Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter
	Flags: bus master, fast devsel, latency 0, IRQ 131, IOMMU group 10
	Memory at b1000000 (64-bit, non-prefetchable) [size=2M]
	Capabilities: <access denied>
	Kernel driver in use: ath10k_pci
	Kernel modules: ath10k_pci

```

```
$ sudo dmesg

[ 3635.554824] pcieport 0000:00:1c.5: AER: Multiple Corrected error received: 0000:02:00.0
[ 3635.554838] ath10k_pci 0000:02:00.0: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)
[ 3635.554842] ath10k_pci 0000:02:00.0:   device [168c:0042] error status/mask=00000081/00006000
[ 3635.554845] ath10k_pci 0000:02:00.0:    [ 0] RxErr                  (First)
[ 3635.554848] ath10k_pci 0000:02:00.0:    [ 7] BadDLLP               
[ 3637.717738] pcieport 0000:00:1c.5: AER: Multiple Corrected error received: 0000:02:00.0
[ 3637.717784] pcieport 0000:00:1c.5: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Transmitter ID)
[ 3637.717792] pcieport 0000:00:1c.5:   device [8086:9d15] error status/mask=00001000/00002000
[ 3637.717801] pcieport 0000:00:1c.5:    [12] Timeout               
[ 3637.717817] ath10k_pci 0000:02:00.0: PCIe Bus Error: severity=Corrected, type=Data Link Layer, (Receiver ID)
[ 3637.717824] ath10k_pci 0000:02:00.0:   device [168c:0042] error status/mask=000000c0/00006000
[ 3637.717831] ath10k_pci 0000:02:00.0:    [ 6] BadTLP                
[ 3637.717838] ath10k_pci 0000:02:00.0:    [ 7] BadDLLP               
[ 3637.717843] ath10k_pci 0000:02:00.0: AER:   Error of this Agent is reported first            
```

> [!note]
> Apparently the `0000:00:1c.5` slot is not the Network Card, but the PCIe Bridge. Only the PCIe bridge had errors in Linux Mint Live CD, and the `ath10k` firmware was loaded successfully. But in Void, the `ath10k_pci` slot also had errors although
>
> (A slot goes by `[domain]:bus:device.function` - as per `lspci` man pages)

This is an early state `dmesg` message I found now (the three code blocks below):
```
[   10.431425] ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2 irq_mode 0 reset_mode 0
[   10.573881] ath10k_pci 0000:02:00.0: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Transmitter ID)
[   10.575560] ath10k_pci 0000:02:00.0:   device [168c:0042] error status/mask=00001101/00006000
[   10.577287] ath10k_pci 0000:02:00.0:    [ 0] RxErr                  (First)
[   10.578992] ath10k_pci 0000:02:00.0:    [ 8] Rollover              
[   10.580666] ath10k_pci 0000:02:00.0:    [12] Timeout  
```
This part resembles the Linux Mint `dmesg`:
```
[   10.833047] ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id 0x003821ff sub 11ad:08a6
[   10.834867] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 0 tracing 0 dfs 0 testmode 0
[   10.837828] ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32 42e41877
[   10.920871] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a
[   11.017056] ath10k_pci 0000:02:00.0: htt-ver 3.56 wmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
```
I also saw something like `ath` here, I don't know if it is related. The final renaming of `wlan0` is expected.
```
[   11.080470] ath: EEPROM regdomain: 0x69
[   11.080475] ath: EEPROM indicates we should expect a direct regpair map
[   11.080484] ath: Country alpha2 being used: 00
[   11.080485] ath: Regpair used: 0x69
[   11.082558] ath10k_pci 0000:02:00.0 wlp2s0: renamed from wlan0
```

Problems are:
- Flooding the TTYs
- Flooding the `dmesg` (was ~360 KB after 1 hour of boot time)

Known solutions are:
- Disable AER (Advanced Error Reporting) with "pci=noaer" kernel boot parameter
- Disable ASPM (Active State Power Management) with "pcie_aspm=off" kernel boot parameter
- Disable AER error reporting by disabling CONFIG_PCIAER kernel flag and recompiling the kernel
- Disable Power Saving in NetworkManager by changing "wifi.powersave = 3" to "wifi.powersave=2"

Notes:
- Disabling the PCIe port makes the Wi-Fi card unrecognized (deleted Reddit.com comment on what command was used)

# Debugging
Running `lspci -v` with `sudo` shows card capabilities, which lists MSI features. Apparently MSI is Message Signaled Interrupts, not the MSI company :P.

```
00:1c.5 PCI bridge: Intel Corporation Sunrise Point-LP PCI Express Root Port #6 (rev f1) (prog-if 00 [Normal decode])
	Subsystem: Acer Incorporated [ALI] Device 1295
	Flags: bus master, fast devsel, latency 0, IRQ 123, IOMMU group 7
	Bus: primary=00, secondary=02, subordinate=02, sec-latency=0
	I/O behind bridge: [disabled] [16-bit]
	Memory behind bridge: b1000000-b11fffff [size=2M] [32-bit]
	Prefetchable memory behind bridge: [disabled] [64-bit]
	Capabilities: [40] Express Root Port (Slot+), MSI 00
	Capabilities: [80] MSI: Enable+ Count=1/1 Maskable- 64bit-
	Capabilities: [90] Subsystem: Acer Incorporated [ALI] Device 1295
	Capabilities: [a0] Power Management version 3
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [140] Access Control Services
	Capabilities: [220] Secondary PCI Express
	Kernel driver in use: pcieport

02:00.0 Network controller: Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter (rev 31)
	Subsystem: Lite-On Communications Inc Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter
	Flags: bus master, fast devsel, latency 0, IRQ 132, IOMMU group 10
	Memory at b1000000 (64-bit, non-prefetchable) [size=2M]
	Capabilities: [40] Power Management version 3
	Capabilities: [50] MSI: Enable+ Count=1/8 Maskable+ 64bit-
	Capabilities: [70] Express Endpoint, MSI 00
	Capabilities: [100] Advanced Error Reporting
	Capabilities: [148] Virtual Channel
	Capabilities: [168] Device Serial Number 00-00-00-00-00-00-00-00
	Capabilities: [178] Latency Tolerance Reporting
	Capabilities: [180] L1 PM Substates
	Kernel driver in use: ath10k_pci
	Kernel modules: ath10k_pci

```

So perhaps "pci=nomsi" could help? Maybe not, because MSI isn't reporting errors here, AER is.
# More Notes taken from the LiveCD
> Notes
> -----
> In Void, `linux-firmware-network` contains the network part of `linux-firmware`
> `wifi-firmware` is another set of proprietary Wi-Fi firmware, I don't need it.
> 
> Linux Mint Live CD (which got this output) had `linux-firmware` and `intel-microcode`. (Had also `amd64-microcode`, etc. but we don't need 'em all)
> 
> EDIT: Apparently my Void install already had `linux-firmware-network`, and I just installed `intel-ucode` although I don't think it will change anything much here. It does help against the SRBDS vulnerability though.
> 
> 2022 releases of Void probably had 5.15 kernel which misbehaved after microcode update, and later by the kernel update.
> 
> EDIT: Apparently Linux Mint with microcode update (I guess it is updated..) doesn't have the same problems.
> 
> Same for openSUSE at the time. I wonder if the errors were really from `ath10k` or from PCIe bridge.
> 
> Both have the same kernel flags. Except in Void, `CONFIG_PCIEAER_INJECT=m`, not unset
> 
> Kernel version was 5.15.0 in Linux Mint and 6.6.10 in Void.
> 
> `CONFIG_PCIEAER=y`
> `# CONFIG_PCIEAER_INJECT is not set`
> `CONFIG_PCIEASPM=y`
> `CONFIG_PCIEASPM_DEFAULT=y`
> `# CONFIG_PCIEASPM_POWERSAVE is not set`
> `# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set`
> `# CONFIG_PCIEASPM_PERFORMANCE is not set`
> 
> No Errors
> ---------
> `$ dmesg`
> 
> `[   20.454073] ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id 0x003821ff sub 11ad:08a6`
> `[   20.454082] ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0`
> `[   20.455150] ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32 42e41877`
> `[   20.520811] ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 8aedfa4a`
> `[   20.614141] ath10k_pci 0000:02:00.0: htt-ver 3.56 [   11.025862] intel_rapl_common: Found RAPL domain package`
`[   11.026841] intel_rapl_common: Found RAPL domain core`
`[   11.027778] intel_rapl_common: Found RAPL domain uncore`
`[   11.028718] intel_rapl_common: Found RAPL domain dram`
`[   11.029656] intel_rapl_common: Found RAPL domain psyswmi-op 4 htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1`
> 
> =======================================
> 
> PCI slot list
> --------
> `$ lspci`
> 
> `00:1c.5 PCI bridge: Intel Corporation Sunrise Point-LP PCI Express Root Port #6 (rev f1)`
> `02:00.0 Network controller: Qualcomm Atheros QCA9377 802.11ac Wireless Network Adapter (rev 31)`
> 
> Errors
> ------
> 
> Got a few PCI bridge errors:
> 
> `[ 1969.824402] pcieport 0000:00:1c.5: AER: Multiple Corrected error received: 0000:00:1c.5`
> `[ 1969.824458] pcieport 0000:00:1c.5: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)`
> `[ 1969.824465] pcieport 0000:00:1c.5:   device [8086:9d15] error status/mask=00000081/00002000`
> `[ 1969.824473] pcieport 0000:00:1c.5:    [ 0] RxErr`                 
> `[ 1969.824479] pcieport 0000:00:1c.5:    [ 7] BadDLLP`               
> `[ 1969.824490] pcieport 0000:00:1c.5: AER: Multiple Corrected error received: 0000:00:1c.5`
> `[ 1969.824503] pcieport 0000:00:1c.5: AER: can't find device of ID00e5`
> `[ 1969.858494] pcieport 0000:00:1c.5: AER: Multiple Corrected error received: 0000:00:1c.5`
> `[ 1969.858510] pcieport 0000:00:1c.5: PCIe Bus Error: severity=Corrected, type=Physical Layer, (Receiver ID)`
> `[ 1969.858514] pcieport 0000:00:1c.5:   device [8086:9d15] error status/mask=00002041/00002000`
> `[ 1969.858521] pcieport 0000:00:1c.5:    [ 0] RxErr`                 
> `[ 1969.858525] pcieport 0000:00:1c.5:    [ 6] BadTLP`
> 
> But no pcieport 0000:02:00.0 errors, which is what ath10k uses.