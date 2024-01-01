Alpine Linux is usually used for small containers, but another approach is to bundle just the app and the required runtime rather than a whole distro. For example, if you copy just the ping binary and it's required libraries (from `ld $(which ping)`, then the resulting container is 5.4 MB if taken from Ubuntu (glibc), and 1.44 MB if taken from Alpine (musl)).

Source: https://medium.com/inside-sumup/stop-using-alpine-docker-images-fbf122c63010
