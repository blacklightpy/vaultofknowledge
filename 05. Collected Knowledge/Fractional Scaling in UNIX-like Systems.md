Fractional Scaling allows UI elements to be resized by a non-integer value, and it is usually done to enlarge high [[Dots Per Inch|DPI]] displays.

Personally, I wanted to make my low DPI display tinier.

Anyways, text scaling does the same, but only for text elements, while leaving the UI elements in the old size, altering the proportion.

Technically, one could scale SVG elements if they had access to the rendering internals, but fractional scaling by itself can make things look a little blurry at times. This is done by system DPI (see [[Dots Per Inch]]), for elements rendered by the system API in Windows, but not for other applications which ignore the DPI setting and use normal pixel ratios.
# How to do it
- GNOME Settings
- For Text Scaling: nwg-look in Sway or Hyprland
- On NVIDIA/AMD: One uses DSR (Dynamic Super Resolution)
	- Downsampling won't fry the GPU often
- On Windows in general
	- RDP on a high resolution screen can be then maximized on the native device to squeeze everything into the small screen
# More references
- https://superuser.com/questions/1301173/high-dpi-display-at-quarter-native-resolution
- https://superuser.com/questions/1615951/forcing-a-resolution-higher-than-my-monitor-supports
	- https://goughlui.com/2019/06/02/review-teardown-generic-hdmi-cheater-dummy-plug-4k-uhd/
- https://wiki.archlinux.org/title/HiDPI
- https://winaero.com/find-change-screen-dpi-linux/
- https://old.reddit.com/r/kde/comments/x9p77f/whats_the_correct_dpi_setting_for_a_monitor/