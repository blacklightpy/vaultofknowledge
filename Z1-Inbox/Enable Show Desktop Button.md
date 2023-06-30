We normally have a show desktop button in our Windows taskbar. This tutorial helps you add the same feature in your dash.

## Option A - For Dash to Panel
Dash to Panel settings - enable Show Desktop

## Option B - Other docks (Dash to Dock, Ubuntu Dock, etc.):
1. Install wmctrl
2. Create a script for Show Desktop
	1. `sudo touch /usr/local/bin/show-desktop`
3. Open it using a text editor
4. Type and save:
	```bash
	#!/bin/bash
	status="$(wmctrl -m | grep "showing the desktop" | sed -r 's/(.*)(ON|OFF)/\2/g')"
	
	if [ $status == "ON" ]; then
	wmctrl -k off
	else
	wmctrl -k on
	fi
	```
5. Create a desktop file for Show Desktop
	1. `touch ~/.local/share/applications/show-desktop.desktop`
6. Open it using a text editor
7. Type and save
   ```
	[Desktop Entry]
	Type=Application
	Name=Show Desktop
	Icon=desktop
	Exec=show-desktop
	```
8. Add it to favorites to make it appear in the dock