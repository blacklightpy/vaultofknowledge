Compositor seems like a generic term, but due to it's low usage in other areas, I'm referring to window compositors in UNIX-like systems.

A compositor draws multiple windows on to the screen, taking care of the movements of windows. For example, it takes care of adding shadows, motion blur, animations, etc. It does this by first drawing windows onto a virtual screen, and then compositing them together on to the main screen.

Compositing window managers might have an easier time with synchronizing window states with the compositor.

Compositors can be divided based on the [[Windowing Systems|windowing system]] they use. It's either [[X Windowing System]] or the newer [[Wayland]] on UNIX-like operating systems, generally.

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

