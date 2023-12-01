People tend to love designs that are highly coupled and highly cohesive.

This means, for example, when considering a desktop graphical environment, they prefer something that does the entire thing: That is, has a panel, tray icons, quick settings, application launcher, dock, workspace switcher, colour themes, animations and system software that matches the design. Additionally, notification and event handlers.

While a desktop environment by itself is a highly cohesive entity, the subcomponents may be highly coupled, making the whole desktop environment a big bundle which cannot be broken down. This is bad from a developer perspective, but is perfectly normal for a user.

Now, when it comes to window managers in the nerd space, they prefer a barebones window manager, which is often separate even from the compositing manager, and to add in all the functionality they desire themselves. This, while allows flexibility, can be daunting to a new user. 

One has to choose:

- The type of window manager (Manual Stacking, Manual Tiling, Dynamic Tiling)
- The choice of displaying protocol (X or Wayland)
- The choice of window manager (Based on what features it has and any plugin ecosystem)
- The choice of panel and dock
- The choice of panel widgets (Workspace Switcher, Notifications, Calendar, Now Playing)
- The choice of tray widgets (App tray, Quick Settings, Battery, Power, Lock)
- The choice of any additional widgets (Weather, Container Handler, System Status, Some other cool idea)
- The choice of application launcher
- The choice of compositing manager (If it isn't already part of the window manager)
- The choice of login greeter

Furthermore, users choosing distributions like Arch may also have to choose stuff like:
- The choice of audio manager
- The choice of network and radio manager
- The choice of proprietary drivers and codecs to use
- The choice of secure access control mechanism
- The choice of kernel

Even further, geeks who hop between distros will have to choose stuff like:
- The choice of init system
- The choice of C library
- The choice of userspace utilities
- The choice of package management
- The choice of system specific utilities

Those who use source based distros will have even further the options to choose:
- The choice of kernel flags
- The choice of compilation flags

And finally, system administrators will have to make the decisions of:
- Creating and assigning groups (Based on access permissions)
- Managing containers (For deploying network services)
- Managing reproducible system configurations (To ensure uniformity and ease of work)
- Ensuring security standards and firewalls to every network interface
- Managing reverse proxy and DNS
