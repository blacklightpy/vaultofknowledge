Compositor seems like a generic term, but due to it's low usagee in other areas, I'm referring to window compositors in UNIX-like systems.

A compositor draws multiple windows on to the screen, taking care of the movements of windows. For example, it takes care of adding shadows, motion blur, animations, etc. It does this by first drawing windows onto a virtual screen, and then compositing them together on to the main screen.

Compositing window managers might have an easier time with synchronizing window states with the compositor.

Compositors can be divided based on the [ windowing system](World%20Building/Science%20and%20Engineering/Mathematics/Computer%20Science/Operating%20Systems/UNIX%20and%20Linux/Windowing%20Systems.md) they use. It's either [X WIndowing System](World%20Building/Science%20and%20Engineering/Mathematics/Computer%20Science/Operating%20Systems/UNIX%20and%20Linux/X%20WIndowing%20System.md) or the newer [Wayland](World%20Building/Science%20and%20Engineering/Mathematics/Computer%20Science/Operating%20Systems/UNIX%20and%20Linux/Wayland.md).

# Examples
## X Windowing System based
### Standalone compositors
- Picom (fork of compton)
- Compton (dead fork of xcompmgr-dana, a fork of xcompmgr)
- xcompmgr
### Compositing window managers
- Compiz (OpenGL based)
- Metacity (XRender based)
- Mutter (used by GNOME)
- KWin (KDE Window Manager)
- Enlightenment

## Wayland based (compositing window managers)
- Mutter (used by GNOME)
- KWin (KDE Window Manager)
- Enlightenment
- Hyprland
- Sway
- dwl
- River
- Cage
- Cagebreak
- waymonad
- wlroots (A base library for building Wayland compositors)
- Weston (Wayland demo compositor)

