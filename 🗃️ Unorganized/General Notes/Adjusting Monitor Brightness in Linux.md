The kernel backlight interface does not include external monitor support.

We use `i2c-dev` and `ddcci-linux` kernel modules for the same.

The utilities are `ddcutil`, and others like Brightness, brillo, `ddccontrol`, etc.

The interface is called DDC/CI (Display Data Channel/Command Interface), a bidirectional interface.

The commands to control the monitors are specified in the Monitor Control Command Set (MCCS) standard.

- The Extended Display Identification Data (EDID) and  is a standard published by [[Video Electronics Standards Association|VESA]].
# Notes from Arch Wiki
- using `i2c-dev` and `ddcci-linux` simultaneously may cause problems