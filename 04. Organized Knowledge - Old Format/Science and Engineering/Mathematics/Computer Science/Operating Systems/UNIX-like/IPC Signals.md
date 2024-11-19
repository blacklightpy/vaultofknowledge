Signals are generally used in UNIX-like systems for performing [[Inter-Process Communications|IPC]] actions.
# C Standard Signals
- SIGABRT (Abort)
- SIGFPE (Floating point exception)
- SIGILL (Illegal instruction)
- SIGINT (Interrupt)
- SIGSEGV (Segmentation violation, due to invalid memory access)
- SIGTERM (Terminate a program)
# UNIX POSIX/SUS Standard Signals

> [!NOTE]
> - Different signals are defined for software to use them in the way they want, but if they don't make use of them, they fall back to the default action
> - Signal numbers are usually left to implementations, but POSIX standard defines numbers for a few signals

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
| SIGURG | — | Ignore | Out-of-band data is available at a socket |
| SIGVTALRM | — | Terminate | Virtual timer expired |
| SIGXCPU | — | Terminate (core dump) | CPU time limit exceeded |
| SIGXFSZ | — | Terminate (core dump) | File size limit exceeded |
| SIGWINCH | — | Ignore | Terminal window size changed |
# Miscellaneous Signals
These signals aren't defined by POSIX, but are used in some systems.

- SIGEMT
- SIGINFO
- SIGPWR
- SIGLOST
- SIGSTKFLT
- SIGUNUSED
- SIGCLD