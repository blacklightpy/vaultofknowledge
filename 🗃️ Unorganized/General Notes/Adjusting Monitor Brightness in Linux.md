The kernel backlight interface does not include external monitor support.

- We use `i2c-dev` and `ddcci-linux` kernel modules for the same.

- The utilities are `ddcutil`, and others like Brightness, brillo, `ddccontrol`, etc.

# Monitor Information
- The interface is called DDC/CI (Display Data Channel/Command Interface), a bidirectional interface
	- The commands to control the monitors are specified in the Monitor Control Command Set (MCCS) standard

- The Extended Display Identification Data (EDID) and Enhanced-EDID are metadata standards published by [[Video Electronics Standards Association|VESA]] for display devices to convey their display capabilities to the video source.
	- It is said to be replaced by DisplayID

- EDID is used in combination with DCC
# Notes from Arch Wiki
- Using `i2c-dev` and `ddcci-linux` simultaneously may cause problems.
	- I find contradictory information in another article (https://clinta.github.io/external-monitor-brightness/)