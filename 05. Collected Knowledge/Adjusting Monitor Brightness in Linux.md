# Problem
The kernel backlight interface does not include external monitor support.
# What worked
Loading `i2c-dev` module and running `ddcutil` worked for me.

As for the `ddcci` module, it seems to not be updated to support the newest kernel version. For this reason I can't use my favorite user-space utilities for the job :(.

---
I'll describe how I came to learning this (I think it's good to let an newbie know).
# What I did initially
- I had installed `ddcci` a few weeks ago, but I didn't get what I was supposed to do. `brightnessctl` did not work. Turns out firstly I built it for a newer kernel which I hadn't compiled, and secondly I never tried `modprobe`-ing it. So my lack of understanding back then.
# Plan and Collecting Data
- We need to gather information about external monitors using their display information interface (DDC/CI and EDID) and supply the right commands.

- We use `i2c-dev` (built-in) and `ddcci` (external) kernel modules for the same.
- If we are accessing it by `i2c-dev` interfaces, the utility to use is `ddcutil`.
- If we are using `ddcci`, we'll be using [[Userland|user-space]] utilities like Brightness, brillo, `ddccontrol`, etc.

- From [linux-i2c Mailing List](https://linux-i2c.vger.kernel.narkive.com/BwIEWfXY/ddc-ci-over-i2c):
	- A monitor is accessed via device `/dev/i2c-n`, created by the video device driver.
	- EDID data is found by reading address 0x50.
	- The monitor's settings are read and written at address 0x37.
	- DDC/CI can be used to communicate with the monitor by address 0x37.

- From [External Monitors | Backlight | Arch Wiki](https://wiki.archlinux.org/title/backlight#External_monitors):
	- A generic monitor backlight can be controlled in many possible ways:
		- Vendor hotkey inaccessible to the OS
		- Either by ACPI, graphic or platform driver. In this case backlight control is exposed through `/sys/class/backlight`, which can be used by user-space utilities.
		- By writing into the graphics card register directly via `setpci`
		- OLED screens don't have backlight, so they are either controlled with [[Pulse Width Modulation|PWM]] 
	- For external monitors, DDC/CI interface can be used to control the monitors who provide MCCS commands via I2C.
	- `ddcutil` can be used with the interface `/dev/i2c-n`
	- Otherwise, `ddcci` kernel module can be installed, preferably with [[Dynamic Kernel Module Support|DKMS]], which will expose an interface in `/sys/class/`, which can be used by user-space utilities.
	- Using `i2c-dev` and `ddcci` modules simultaneously may cause the device to appear as busy.
# Organizing Notes
## Display Information
### Interaction Interface
- The interface is called DDC/CI (Display Data Channel/Command Interface), a bidirectional software interface over [[Inter-IC|I2C]] hardware serial interface.
	- The commands to control the monitors are specified in the Monitor Control Command Set (MCCS) standard document.
### Metadata Format
- The Extended Display Identification Data (EDID) and Enhanced-EDID are metadata standards published by [[Video Electronics Standards Association|VESA]] for display devices to convey their display capabilities to the video source.
	- It is said to be replaced by DisplayID

EDID is used in combination with DCC to collect display information.
# Another approach I found
I found another approach here: https://clinta.github.io/external-monitor-brightness/

I initially found this counter-intuitive as it uses both `i2c-dev` and `ddcci` modules, and also `ddcutil` as well as user-space utilities.

Turns out it solves a problem (listed in `ddcci-linux` issue 7) which required using a `udev` rules to handle hot-plugged devices, for which a `/sys/class/backlight/` device would be created by invoking the I2C interface of the device using the `ddcci` module by passing the 0x37 address. This was implemented using a systemd service.