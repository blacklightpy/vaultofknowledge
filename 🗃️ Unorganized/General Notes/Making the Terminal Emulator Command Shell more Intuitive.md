Terminal Emulator: Emulating the terminal form factor to accept keystroke inputs
Command Shell: A shell for processing commands

**Current format**
- **Working Directory**:
	- Command Shells reference paths either from the global root or as relative the current working directory. The working directory relative paths are distinguished from the root relative paths by the lack of the root directory indicator.
	- All shells typically begin at a default path. On Microsoft Windows, basic user launched command shells begin at their home directory, `C:/Users/<Username>`, while administrator launched command shells begin at `C:/Windows/System32`. In the UNIX parlance, the working directory every user is their home folder, `/home/<username>`, with the root user having the home folder `/root`. For simplicity, the home directory is referenced as `~` according to which user is using the shell.
- **Prompt**:
	- It tells you details about where the commands are being invoked from.
	- It may include:
		- **Username**: Commands may be used to run programs and access or modify files. This activity can be user specific when it comes to the program and it may also have privilege levels with respect to which user is using the system. Because of this, the username lets you know what user account you are using the shell as.
		- **Hostname**: In case you are using a remote system's shell via network, or simply another subsystem or virtual machine, the hostname lets you know what machine you are currently working on.
		- **Path to Working Directory**: Since command shells reference paths relative to the current working directory, it is beneficial to know where we are currently.
		- **Prompt Character**: This is helpful for the user to know that they are in the command input mode, rather than in a state where some other program running on the terminal emulator, launched via the command shell is handling their input. On Microsoft Windows Command Shell and Powershell, this is `>` by default. On UNIX systems, it is generally `$` for user prompts, and `#` for root prompts, so that the user is careful about typing root privileged commands.
	- Examples
		- Windows's legacy Command Shell is in the format `'path to working directory' >`
		- GNU Bash Shell is by default in the format `['username'@'host' 'path to working directory'] $`
		- The original UNIX shell only had a separator, `$`. We had to infer the working directory by typing the command to print the working directory, `pwd`.
- **Command Format**
	- It refers to the way in which a command is passed.
	- **Executable or Command**
	- **Parameters**
		- **Delimiters**
			- Commands follow norms to understand and differentiate the different instructions of parameters passed by it. We separate parameters using delimiters.
			- The thing about a delimiter is that it must be chosen so that the delimiter may not appear as part of the parameter, or if it does, we must be able to differentiate it using a differentiating pair of delimiters to signify the start and end of such parameters. The norm is to use any whitespace character excluding a newline (or backspace if it counts) to signify separation of parameters, and a newline to signify the end of a single command.
			- So for example, if a parameter itself contains whitespaces, it should be differentiated by enclosing in a pair of quote delimiters. Quotes are used because such parameters are either strings or path names, which are yet again interpreted as strings internally by any program.
			- Other programming delimiters include the use of a semicolon (`;`) to indicate that a line is part of a larger sequence of lines, although it itself has ended.
			- 
		- **Flags**

**My New Idea 1**
It is regarding the use of delimiters.

*Rough Work:*
```
jyothish@void ~> Run C:/Program Files/Tech Walter; Arguments=Medico, Pursuit, Waltwinter
jyothish@void ~> Move Program Files/Tech Walter; Destination D/Program Files; Flags=Recursive;
```

*Bonus:* Whitespaces are useful as delimiters for readability, but are not required for programming. For this reason, programming languages often don't care about readability either, although that is discouraged. So we must bake readability into our programming language too.

Sometimes it also feels like writing could use programming style delimiters to digress topics, while still separating the larger topic with whitespace breaks

**My New Idea 2**
It's about the use of working directories. I haven't thought about it yet.