A shell is a program with which we can interface with a program. It refers to the main executable file of a program, to which we can pass commands. We interact with the shell using a user interface (UI).

> [!NOTE]
> A shell is a program that provides a UI - CLI, TUI or GUI.

e.g: GNU Bash is a shell, and GNOME Terminal is a terminal emulator that provides a command line UI (CLI)
e.g: Windows Command Prompt is a shell, and Windows Console Host is a terminal emulator that provides a CLI
e.g: GNOME Shell is a shell, but the interface that appears on the screen is the graphical UI (GUI)
e.g. Windows Explorer is a shell, but the interface that appears on the screen is the GUI

For GUI applications, usually we launch them from their icons, but we can also edit the default launch command to set additional parameters.

For example, we can edit the launch command of a game's shortcut file from `game.exe` to `game.exe --windowed` to make the game run in windowed mode. Or something like `--enable-cheats` or `--draw-distance=max`.

Often a GUI has a settings section to edit these values, but essentially, the shell is the program that reads the settings and commands and executes the program.