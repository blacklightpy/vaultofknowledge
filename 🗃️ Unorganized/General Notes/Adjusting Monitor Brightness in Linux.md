# Problem

The kernel backlight interface does not include external monitor support.
# Plan and Data

- We need to gather information about external monitors using their display information interface (DDC/CI and EDID) and supply the right commands.

- We use `i2c-dev` and `ddcci-linux` kernel modules for the same.
- The main utility is `ddcutil`, but there are others like Brightness, brillo, `ddccontrol`, etc.

From [linux-i2c Mailing List](https://linux-i2c.vger.kernel.narkive.com/BwIEWfXY/ddc-ci-over-i2c):
- A monitor is accessed via device `/dev/i2c-n`, created by the video device driver.
- EDID data is found by reading address 0x50.
- The monitor's settings are read and written at address 0x37.
- DDC/CI can be used to communicate with the monitor by address 0x37.
# Display Information
## Interaction Interface
- The interface is called DDC/CI (Display Data Channel/Command Interface), a bidirectional interface
	- The commands to control the monitors are specified in the Monitor Control Command Set (MCCS) standard
## Metadata Format
- The Extended Display Identification Data (EDID) and Enhanced-EDID are metadata standards published by [[Video Electronics Standards Association|VESA]] for display devices to convey their display capabilities to the video source.
	- It is said to be replaced by DisplayID

EDID is used in combination with DCC to collect display information.
# Notes from Arch Wiki
- Using `i2c-dev` and `ddcci-linux` simultaneously may cause problems.
	- I find contradictory information in another article (https://clinta.github.io/external-monitor-brightness/)