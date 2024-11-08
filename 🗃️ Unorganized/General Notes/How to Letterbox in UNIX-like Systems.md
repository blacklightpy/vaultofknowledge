# Why would I want this
- Screen resolution is non-standard, and I want to cut off some areas to make it look like typical screens
# How it is done in Windows
On Windows this is done by the OS using the drivers or by the Intel Graphics Control Panel (in Intel GPUs)
# References
- https://askubuntu.com/questions/1150405/how-do-i-enable-letterbox-for-my-display (No answer, but shows attempts)
- https://unix.stackexchange.com/questions/220387/how-to-set-scaling-mode-for-external-displays-on-intel-gpu
- https://old.reddit.com/r/linuxquestions/comments/gk8nxg/is_it_possible_to_use_xrandr_to_force_use_of_only/
- https://superuser.com/questions/1435053/how-to-use-xrandr-to-crop-part-of-my-monitor
- https://superuser.com/questions/1547836/using-xrandr-is-it-possible-to-use-only-part-of-a-secondary-monitor-without-pan (Related: Reducing Area)
# How I did it
## X Windowing System
- ``
