The network card is Qualcomm Atheros QCA9377 (Wi-Fi)
The driver in use is ath10k_pci with the corresponding kernel module

```
$ lspci -v

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

Problems are:
- Flooding the TTYs
- Flooding the dmesg (was ~360 KB after 1 hour of boot time)

Known solutions are:
- Disable AER (Advanced Error Reporting) with "pcie=noaer" kernel boot parameter
- Disable ASPM (Active State Power Management) with "pcie_aspm=off" kernel boot parameter
- Disable AER error reporting by disabling CONFIG_PCIAER kernel flag and recompiling the kernel
- Disable Power Saving in NetworkManager by changing "wifi.powersave = 3" to "wifi.powersave=2"

Notes:
- Disabling the PCIe port makes the Wi-Fi card unrecognized (deleted Reddit.com comment on what command was used)