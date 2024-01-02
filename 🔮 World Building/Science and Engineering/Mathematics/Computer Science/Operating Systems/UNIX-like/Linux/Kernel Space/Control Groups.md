Control Groups or `cgroups` is a Linux kernel feature that allows grouping different processes together so that they can be controlled together (freezing, snapshotting, terminating) or their resources can be limited, prioritized or monitored.

`cgroups` are used by programs such as [[systemd]], [[Docker]], LXC, libvirt, etc.

## Examples
- systemd uses `cgroups` for terminating child processes along with parents, where the association is not perfectly mapped in other init systems
