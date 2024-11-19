Wayland is a communication protocol between a graphical display server and applications, or clients.
It the official replacement for the [[X Windowing System]].

In Wayland, the display server, [[Window Managers|window manager]] and [[Compositors|compositor]]  are usually a single entity known as a compositor.

## Libraries
- wld: A primitive drawing library for Wayland
- swc: A simple Wayland compositor built as a library to write window managers, an alternative to xorg, based on wld rather than OpenGL
- velox: An example Wayland window manager based on swc
### Other approaches
- Mir (Started as a display server, now a Wayland compositor)
- wlroots (modular architecture)
- wayland-rs (modular architecture)
- Mutter (used as a base, in Arek WM)
- Arcan display server with Wayland backend
