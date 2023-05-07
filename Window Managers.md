# Outline
A window manager is the program that handles displaying the content of GUI applications. It also adds window decorations and the maximize, minimize and close buttons.

Window managers can be divided based on their style as: Tiling, Stacking and Dynamic.

There are two main displaying systems in UNIX-Like operating systems: [[X WIndowing System]] (or X) and the newer [[Wayland]]. For other operating systems, see [[Windowing Systems]].

In [[X WIndowing System]]:
Display Server > [[Compositors|Compositor]] > [[Window Managers|Window Manager]]

Compositing Window Mangers are Window Managers with an integrated compositor.
A desktop environment shell has a window manager, compositor and other panels, docks and widgets running on an X display server.

In [[Wayland]]:
Wayland takes a combined approach to the display ecosystem.

The display server, window manager and compositor are a single program, called a compositor.
A desktop environment shell has a compositor and and other panels, docks and widgets.

# Components
## Dash

## Dock / Panel 

## Bar (Sometimes same as panel)
Examples: Polybar, Wibar (Awesome), somebar (dwm bar for dwl) + someblocks (dwmblocks for dwl)
### Bar Widgets
Date, Time, Bluetooth, Wi-Fi, Sound, Night Colour, etc.
Spotify, Calendar
Desktop Count
Open Windows, etc. according to your preference.

Full List: Desktop #, Task View, Date Time, Bluetooth, Calendar, Notifications
## Desktop Widgets
You really have to get imaginative here.

# Examples
A larger list can be found in the [Arch Wiki > Window Managers](https://wiki.archlinux.org/title/window_manager)

## X based
### Tiling
- ratpoison (Say goodbye to your mouse ***my tubelight self realizes pun***)
- herbstluftwm (Pronounce as herbs-laugh-t XD)
### Stacking / Floating
### Dynamic
- Regolith: i3 with GNOME under the hood
- dwm (Suckless Software)
- awesome (dwm fork)
- i3
- i3-gaps (i3-fork that allows gaps between tiled windows; now joined with i3)
- Enlightenment
- Compiz
- Mutter
- Hyprland
- dwl
- Metacity (Older, uses XRender instead of OpenGL)
- KWin (KDE Window Manager)
- XFWM (XFCE Window Manager)

- spectrwm
- bspwm
- xmonad

- IceWM
- openbox
- fluxbox
- Window Maker (neXTSTEP style)
- AfterSTEP (neXTSTEP style)
- sway


# Wayland based

