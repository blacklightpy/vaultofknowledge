### Working
- https://www.vogella.com/tutorials/AndroidInternals/article.html#:~:text=Android%20uses%20a%20special%20virtual,%22%20(Dalvik%20Executable)%20files
- https://academy.realm.io/posts/360-andev-2017-effie-barak-android-internals/
- Google Docs

Android uses the Linux kernel. Linux kernel does not interfere with userspace utilities, so system utilities are seperate from the kernel. Android uses Toybox for it's system userland. The system C Library used is Bionic. Android uses a custom init system with rc scripts. The windowing system is SurfaceFlinger.

Android strictly enforces SELinux and only a few processes are allowed to run as root. The superuser access binary is not included in Android. Even the processes that do run are heavily restricted by SELinux parameters.