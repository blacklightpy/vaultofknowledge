systemd is an init system designed by Lennart Poettering specifically for Linux, which automatically takes care of most of the general requirements of Linux distributions without having to do too much tinkering.

systemd is criticized for making applications depend too much on it so that software cannot run on systems that don't use systemd as their init system.

systemd also depends on "GNU glibc" as the system C library (`libc`), so it does not run on systems that use other libc implementations like "musl".

The core utilities provided by systemd are:
- `systemd`, the service manager,
- `systemctl`, the shell to control or query systemd, and
- `systemd-analyze` to identify systemd performance statistics.

Some of the common daemons included by systemd are: `journald`, `udevd`, `localed`, `logind`, `homed`, `networkd`, `firewalld`, `resolved`, `systemd-boot`, `systemd-bsod`, `timedated`, `timesyncd`, `systemd-tmpfiles`, etc.

systemd also includes related libraries and command line utilities such as `libudevd` and `journalctl`.

## Units
In systemd, daemons are described using plain text "unit" files. The syntax of unit files is declarative, and is inspired by .INI files used in Microsoft Windows.

The different types of unit files are: `.service`, `.socket`, `.device`, `.mount`, `.automount`, `.swap`, `.target`, `.path`, `.timer`, `.snapshot`, `.slice`, `.scope`, etc.

## Targets
Unlike the previously popular SysVInit which uses numbered "runlevels" to describe system states, systemd uses named "targets" to describe system states. Rather than using the `/etc/inittab` file to describe runlevels, systemd uses separate appropriately named files ending in `.target` to specify targets. For compatibility with SysVInit style runlevels, there are targets that are named `runlevelX.target`.

## Use of Control Groups
systemd makes use of [[Control Groups]] using the following types of units:
- Services / .service units (Encapsulates processes started and stopped by systemd)
- Scopes / .scope units (Encapsulates processes started by arbitrary processes via fork())
- Slices / .slice units (Encapsulates service and scope trees)

Services, slices and scopes maybe dynamically created or be created by administrators. However some built-in services are necessary for systemd to work. Also four slices are defined by default.

systemd always maintains control over the root `cgroup`, as it is essential that `cgroup` should be controlled by one process only.

- systemd accessing `cgroups` exclusively
  - ![](https://upload.wikimedia.org/wikipedia/commons/e/e7/Linux_kernel_unified_hierarchy_cgroups_and_systemd.svg)

## Examples of systemd architecture
- Architecture of systemd as used in Tizen
  - ![](https://upload.wikimedia.org/wikipedia/commons/3/35/Systemd_components.svg)
