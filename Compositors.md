Compositor seems like a generic term, but due to it's low usagee in other areas, I'm referring to window compositors in UNIX-like systems.

The function of a compositor: It draws multiple windows on to the screen, taking care of the movements of windows. For example, it takes care of adding shadows, motion blur, animations, etc. It does this by first drawing windows onto a virtual screen, and then compositing them together on to the main screen.

Compositing window managers might have an easier time with synchronizing window states with the compositor.

# Wayland (compositing window managers)
- Mutter
- KWin
- Xfwm4
- Enlightenment
- Hyprland
- Sway
- dwl
- wlroots
- waymonad

# X Windowing System
## Standalone compositors
- Picom (fork of compton)
- Compton (dead fork of xcompmgr-dana, a fork of xcompmgr)
- xcompmgr
## Compositing window managers
- Compiz (OpenGL based)
- Metacity (XRender based)