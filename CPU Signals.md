- SIGTRAP
- SIGHUP (Signal Hang Up)
- SIGCONT (Signal Con)

# C Standard Signals
- SIGABRT ("abort", abnormal termination)
- SIGFPE (floating point exception)
- SIGILL ("illegal", invalid instruction)
- SIGINT ("interrupt", interactive attention request sent to the program)
- SIGSEGV ("segmentation violation", invalid memory access)
- SIGTERM (Terminate a program)
# POSIX Standard Signals

> [!NOTE]
> - Different signals are defined because 

| Signal | Signal Number | Default Action | Description |
| --- | --- | --- | --- |
| SIGABRT | 6 | Terminate (core dump) | Process abort signal |
| SIGALRM | 14 | Terminate | Alarm clock |
| SIGBUS | — | Terminate (core dump) | Access to an undefined portion of a memory object |
| SIGCHLD | — | Ignore | Child process terminated, stopped, or continued |
| SIGCONT | — | Continue | Continue executing, if stopped |
| SIGFPE | 8 | Terminate (core dump) | Erroneous arithmetic operation |
| SIGHUP | 1 | Terminate | Hangup |
| SIGILL | 4 | Terminate (core dump) | Illegal instruction |
| SIGINT | 2 | Terminate | Terminal interrupt signal |
| SIGKILL | 9 | Terminate | Kill (cannot be caught or ignored) |
| SIGPIPE | 13 | Terminate | Write on a pipe with no one to read it |
| SIGPOLL | — | Terminate | Pollable event |
| SIGPROF | — | Terminate | Profiling timer expired |
| SIGQUIT | 3 | Terminate (core dump) | Terminal quit signal |
| SIGSEGV | 11 | Terminate (core dump) | Invalid memory reference |
| SIGSTOP | — | Stop | Stop executing (cannot be caught or ignored) |
| SIGSYS | — | Terminate (core dump) | Bad system call |
| SIGTERM | 15 | Terminate | Termination signal |
| SIGTRAP | 5 | Terminate (core dump) | Trace/breakpoint trap |
| SIGTSTP | — | Stop | Terminal stop signal |
| SIGTTIN | — | Stop | Background process attempting read |
| SIGTTOU | — | Stop | Background process attempting write |
| SIGUSR1 | — | Terminate | User-defined signal 1 |
| SIGUSR2 | — | Terminate | User-defined signal 2 |
| SIGURG | — | Ignore | [Out-of-band data](https://en.wikipedia.org/wiki/Out-of-band_data "Out-of-band data") is available at a socket |
| SIGVTALRM | — | Terminate | Virtual timer expired |
| SIGXCPU | — | Terminate (core dump) | CPU time limit exceeded |
| SIGXFSZ | — | Terminate (core dump) | File size limit exceeded |
| SIGWINCH | — | Ignore | Terminal window size changed |