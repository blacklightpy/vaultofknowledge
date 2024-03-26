# On UNIX Systems
We use the [[Freedesktop Projects|Freedesktop]] Sound Schemes specification to do this.

Basically we put the named sound packs in /usr/share/sounds, with a sound folder and with an `index.theme` file.

The theme is then set using the `dconf-editor` by going to `org.gnome.desktop.sound` and setting the sound theme name appropriately.

As for how they are invoked, `/usr/bin/libcanberra-gtk` can be used with the `--id` flag to select an individual sound manually.

Desktop environments may also have sound theme support libraries built in.

Canberra is the Freedesktop sound theme reference library.