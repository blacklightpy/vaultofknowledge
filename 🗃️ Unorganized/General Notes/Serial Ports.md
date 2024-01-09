- $\text{SPI}$ ([[Serial Peripheral Interface]])
- $\text{I}^2\text{C}$ ([[Inter-IC]])
- $\text{I}^3\text{C}$ ([[Inter-Inter-IC]])
- $\text{UART}$ (Universal Asynchronous Reception and Transmission)
	- Since it is asynchronous, no clock is needed
	- Just has RX and TX on both sides
- $\text{CAN}$ (Controller Area Network)
- $\text{USB}$ (Universal Serial Bus)
- $\text{RS-232}$ (Recommended Standard 232)

# Serial Protocols
- MAVLink
# Notes
- Older Raspberry Pi SoCs have 2 UARTs - a PL011 and a mini UART
- On RPis with WiFi/BT Module, primary UART is mini UART
- On RPis without WiFi/BT Module, primary UART is PL011
- /dev/serial0 is a symlink to the primary UART
- /dev/serial1 is a symlink to the secondary UART
- /dev/ttyS0 refers to the mini UART
- /dev/ttyAMA0 refers to the PL011

> [!NOTE]
> - On Raspberry Pi 4, they appear as ttyAMA0, ttyAMA1, ... , ttyAMA5, when enabled (0 is already enabled)
> ```
> dtoverlay=uart1
> dtoverlay=uart2
> dtoverlay=uart3
> dtoverlay=uart4
> dtoverlay=uart5
> ```
> 

- Serial Interaction Software (for Windows)
	- SSCOM
	- NetAssist (unknown origin)
	- HW-Group Hercules SETUP Utility