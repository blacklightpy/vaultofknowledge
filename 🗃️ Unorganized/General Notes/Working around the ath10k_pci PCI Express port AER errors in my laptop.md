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

Known solutions are:
- Disable AER error reporting with "pcie=noaer"
- Disable ASPM (Active State Power Management) with "pcie_aspm=off"
- NetworkManager: wifi.powersave = 3 > wifi.powersave=2

Notes:
- Disabling the PCIe port makes the WiFi card unrecognized (deleted Reddit.com comment on what command was used)