# My additions / modifications

1. As usual, one should comment out the `autogenerated` status

```Shell
# autogenerated = 1 # remove this line to remove the warning
```

2. `monitor=eDP-1,disable` (because my laptop screen is broken)

3. Optional (as I wanted to scale the resolution of my monitor to make it smaller. The result was blurry)

```Shell
# uncomment below lines to scale the monitor (bad in X11)
# 0.937 gives back 1366 points horizontally
# $scale=1
# monitor=HDMI-A-1,1280x1024,0x0,$scale
```

4. Programs to execute

I used the following programs:
- AGS (Aylur's GTK Shell; for Aylur's AGS Widgets)
- SWWW Daemon (Simple Wayland Wallpaper Widget Daemon; to change wallpaper)
- PipeWire Audio Service
- KDE Connect Daemon
- KDE Connect Tray Indicator
- [[Polkit]] KDE Agent
- XHosts command (To add a rule to allow programs launched as root to access the X server)

> [!info] More on XHosts
> Hyprland already adds the XHosts rule for the local user, and I had to add one for root.
> 
> XHosts is similar to XAuth, which does the same, but with setting up a magic number for authentication.
> 
> Both then use $XAUTHORITY, $HOME/.XAuthority, or other variables to get the access control list.

```Shell
# Execute your favorite apps at launch
# exec-once = waybar & hyprpaper & firefox
exec-once = ags & swww-daemon & pipewire & /usr/libexec/kdeconnectd & kdeconnect-indicator & /usr/libexec/polkit-kde-authentication-agent-1 & xhost +SI:localuser:root
```

5. Keybindings

First I disabled the Wofi launcher keybinding to use Aylur's AGS app launcher widget instead.

```Shell
# bind = $mainMod, R, exec, wofi --show drun`
```

Aylur's AGS widget keybindings (I believe I had to make some modification to set the screenshot/recording utility used)

```Shell
# reload
bind=CTRL SHIFT, R,  exec, ags quit; ags -b hypr

# opening windows
bind=SUPER, R,       exec, ags -t applauncher
bind=,XF86PowerOff,  exec, ags -t powermenu
bind=SUPER, Tab,     exec, ags -t overview

# screenshot & screenrecord
bind=SUPER SHIFT, R, exec, ags -r 'recorder.start()' # start/stop toggle
bind=SUPER ALT, P,   exec, ags -r 'recorder.screenshot()'
bind=SUPER SHIFT, P, exec, ags -r 'recorder.screenshot(true)'

# brightness adjusting
bindle=,XF86MonBrightnessUp,   exec, ags -r 'brightness.screen += 0.05; indicator.display()'
bindle=,XF86MonBrightnessDown, exec, ags -r 'brightness.screen -= 0.05; indicator.display()'
bindle=,XF86KbdBrightnessUp,   exec, ags -r 'brightness.kbd++; indicator.kbd()'
bindle=,XF86KbdBrightnessDown, exec, ags -r 'brightness.kbd--; indicator.kbd()'

# volume adjusting
bindle=,XF86AudioRaiseVolume,  exec, ags -r 'audio.speaker.volume += 0.05; indicator.speaker()'
bindle=,XF86AudioLowerVolume,  exec, ags -r 'audio.speaker.volume -= 0.05; indicator.speaker()'

bind= SUPER, F, fullscreen
```

Adding my own bindings

`bind= SUPER, F, fullscreen`
# Default Hyprland config
```Shell

########################################################################################
AUTOGENERATED HYPR CONFIG.
PLEASE USE THE CONFIG PROVIDED IN THE GIT REPO /examples/hypr.conf AND EDIT IT,
OR EDIT THIS ONE ACCORDING TO THE WIKI INSTRUCTIONS.
########################################################################################
 
#
# Please note not all available settings / options are set here.
# For a full list, see the wiki
#

autogenerated = 1 # remove this line to remove the warning

# See https://wiki.hyprland.org/Configuring/Monitors/
monitor=eDP-1,disable

# See https://wiki.hyprland.org/Configuring/Keywords/ for more

# Execute your favorite apps at launch
# exec-once = waybar & hyprpaper & firefox

# Source a file (multi-file configs)
# source = ~/.config/hypr/myColors.conf

# Some default env vars.
env = XCURSOR_SIZE,24

# For all categories, see https://wiki.hyprland.org/Configuring/Variables/
input {
    kb_layout = us
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =

    follow_mouse = 1

    touchpad {
        natural_scroll = no
    }

    sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
}

general {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    gaps_in = 5
    gaps_out = 20
    border_size = 2
    col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
    col.inactive_border = rgba(595959aa)

    layout = dwindle
}

decoration {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more

    rounding = 10
    
    blur {
        enabled = true
        size = 3
        passes = 1
    }

    drop_shadow = yes
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = yes

    # Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
}

dwindle {
    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
    preserve_split = yes # you probably want this
}

master {
    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    new_is_master = true
}

gestures {
    # See https://wiki.hyprland.org/Configuring/Variables/ for more
    workspace_swipe = off
}

# Example per-device config
# See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
device:epic-mouse-v1 {
    sensitivity = -0.5
}

# Example windowrule v1
# windowrule = float, ^(kitty)$
# Example windowrule v2
# windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
# See https://wiki.hyprland.org/Configuring/Window-Rules/ for more


# See https://wiki.hyprland.org/Configuring/Keywords/ for more
$mainMod = SUPER

# Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
bind = $mainMod, Q, exec, kitty
bind = $mainMod, C, killactive, 
bind = $mainMod, M, exit, 
bind = $mainMod, E, exec, dolphin
bind = $mainMod, V, togglefloating, 
# bind = $mainMod, R, exec, wofi --show drun
bind = $mainMod, P, pseudo, # dwindle
bind = $mainMod, J, togglesplit, # dwindle

# Move focus with mainMod + arrow keys
bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

# Switch workspaces with mainMod + [0-9]
bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow
```