## Introduction
A window manager is the program that handles displaying the content of GUI applications. It also adds window decorations and the maximize, minimize and close buttons.

Window managers can be divided based on their style as: Tiling, Stacking and Dynamic.

There are two main displaying systems in UNIX-Like operating systems: [[X Windowing System]] (or X) and the newer [[Wayland]]. For other operating systems, see [[Windowing Systems]].

In [[X Windowing System]]:
Display Server > [[Compositors|Compositor]] > Window Manager

Compositing Window Mangers are Window Managers with an integrated compositor.
A desktop environment shell has a window manager, compositor and other panels, docks and widgets running on an X display server.

In [[Wayland]]:
Wayland takes a combined approach to the display ecosystem.

The display server, window manager and compositor are a single program, called a compositor.
A desktop environment shell has a compositor and and other panels, docks and widgets.

## Additional Components
When using a window manager setup, we can use these parts to our liking to make it have the functionality of a desktop environment.
### Dash (/ App Menu / Launcher)

Windows 8 Start Menu:

![[Windows 8 Dash.png]]

Android Launcher (Pixel):

![[Stock Android Launcher.png]]

GNOME Dash (Mine, with Blur My Shell extension):

![[My GNOME Dash.png]]

MacOS Launchpad:

![[MacOS Launchpad.png]]

Deepin 15.11 Dash:

![[Deepin 15.11 Dash.png]]

### Dock (/ Panel / Task bar)
They are conventionally placed at the bottom or at the left.
I used horizontal screenshots to show them without having to scroll too much.

#### Examples
| OS                              | Screenshot                               |
| ------------------------------- | ---------------------------------------- |
| Windows 7 Taskbar               | ![[Windows 7 Taskbar.png]]               |
| GNOME Dash to Dock (Dock Mode)  | ![[GNOME Dash to Dock (Dock Mode).png]]  |
| GNOME Dash to Dock (Panel Mode) | ![[GNOME Dash to Dock (Panel Mode).png]] |
| GNOME Dash to Panel             | ![[GNOME Dash to Panel.png]]             |
| Plank Dock (app)                | ![[Plank Dock (app).png]]                |
| Pantheon Dock                   | ![[Pantheon Dock.png]]                   |

I tried to display vertical screenshots using a table, but the site generator has some issues with converting the tables. So they're linked in another page [[Screenshots of docks placed vertically|here]]

### Bar (/ Panel / Status bar)
They are conventionally placed at the top. Some window managers include a bar with them.

#### Examples
- Polybar
- Wibar (Awesome)
- dwm bar + dwmblocks
- somebar (dwm bar for dwl) + someblocks (dwmblocks for dwl)
#### Bar Widgets
Date, Time, Bluetooth, Wi-Fi, Sound, Night Colour, etc.
Spotify, Calendar
Workspace Indicator
Open Windows, etc. according to your preference.

Full List: Workspace Indicator, Task View, Date and Time, Bluetooth, Calendar, Notifications, System Tray
### Desktop Widgets
You really have to get imaginative here. In Windows, we use Rainmeter for this.
There are many widgets made using eww (El Kowar's Wacky Widgets).

## Examples of Window Managers
A larger list can be found in the [Arch Wiki > Window Managers](https://wiki.archlinux.org/title/window_manager)

### X based

#### Stacking / Floating
- Compiz (A Window Manager with 3D effects)
- Metacity (Older, uses XRender instead of OpenGL)
- Mutter (Used in GNOME and Cinnamon)
- KWin (KDE Window Manager)
- Xfwm (Xfce Window Manager)
- Enlightenment
- fluxbox
- twm (Default window manager used by X.org server)
- Window Maker (neXTSTEP style)
- AfterSTEP (neXTSTEP style)
- IceWM
- openbox

#### Tiling
- i3
- i3-gaps (i3-fork that allows gaps between tiled windows; now joined with i3)
- Regolith (i3 with GNOME shell)
- bspwm
- ratpoison (Say goodbye to your mouse ***my tubelight self realizes pun***)
- herbstluftwm (Pronounce as herbs-laugh-t XD)

#### Dynamic
- dwm (Suckless Software)
- awesome (dwm fork)
- spectrwm
- xmonad
- Qtile

### Wayland compositors
Since in Wayland, window managers and compositors are combined, they are just called compositors.

- dwl (dwm clone for Wayland)
- Hyprland
- sway
- river
- cage
- cagebreak
- waymonad (xmonad clone for Wayland)
- Mutter (used in GNOME)
- KWin (KDE window manager)
- Enlightenment
- wlroots (A base library for building Wayland compositors)
- Weston (Wayland demo compositor)