UDisks, formerly DeviceKit is a system that allows handling of storage devices. UDisks usually relies on kernel `udev` rules, but devices that don't have `udev` rules are polled.

UDisks provides access to block devices via D-Bus. This is why devices are mounted at session specific directories like `/run/media/<username>/<device-id>`.

Udisks consists of a D-Bus daemon `udisksd` and a command line shell `udisksctl`.

Access to UDisks can be restricted using [[Polkit]].

Some frontends for udisks2 are:
- GNOME Disks
- udiskie
