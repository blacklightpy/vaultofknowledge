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

Notes:
- Panning will crop render area, but it won't crop where the mouse can move.
- Framebuffer size sets the 
	- Without framebuffer size set to 1280x720, mouse will go down with transform
- Transform translate values will affect how much the mouse can move in the specified direction


- Functions
	- Mode
		- (Sets Data Resolution)
	- Transform (Resolution, Scale)
	- Framebuffer Size
		- (Sets Canvas Resolution) (i.e. Canvas)
	- Pan Resolution
		- (Sets the Canvas Pan) (Default: Whole Canvas)
	- Scale
		- (Sets the DPI Scale for Data)
		- It is only a shorthand for "transform"

- If only transform is used (with scale), and if the render goes out of screen, moving the mouse out of screen resets scale to 1x1 and stretches.
	- And of course, without framebuffer, the mouse can go down
- If transform and framebuffer is used, and if the render goes out of screen, moving the mouse out of screet resets scale to 1x1 and stretches


<b><u>NOTE:</u></b>
- The monitor is set in 1280x720 mode.
- But it stretches out to the same resolution that 1280x1024 mode takes.

In XRandR (X Rotate and Resize):
- The values in Transform Matrix are as follows:
  
| ROWS () / COLUMNS (R) | COLUMN 1 | COLUMN 2 | COLUMN 3 |
| --------------------- | -------- | -------- | -------- |
| ROW 1                 | a        | b        | c        |
| ROW 2                 | c        | d        | e        |
| ROW 3                 | e        | f        | g        |

