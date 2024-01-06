The kernel backlight interface does not include external monitor support.

We use `i2c-dev` and `ddcci-linux` kernel modules for the same.

The utilities are `ddcutil`, and others like Brightness, brillo, `ddccontrol`, etc.

# Notes from Arch Wiki
- using `i2c-dev` and `ddcci-linux` simultaneously may cause problems