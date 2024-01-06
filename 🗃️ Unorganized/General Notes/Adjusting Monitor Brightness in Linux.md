The kernel backlight interface does not include external monitor support.

We use `i2c-dev` and `ddcci-linux` kernel modules for the same.

The utilities are `ddcutil`, and others like Brightness, brillo, `ddccontrol`, etc.

The interface is called DDC/CI (Display Data Channel/Command Interface)
# Notes from Arch Wiki
- using `i2c-dev` and `ddcci-linux` simultaneously may cause problems