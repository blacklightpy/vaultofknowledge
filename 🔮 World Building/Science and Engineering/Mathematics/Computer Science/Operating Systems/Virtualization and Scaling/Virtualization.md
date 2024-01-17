# Hypervisors or Virtualizers
- Virtualbox
- Xen
- KVM
# OS-Level Virtualizers
- Containers - LXC, Docker, Podman, OpenVZ (VPS)
- Jails - chroot, BSD Jails
# Emulators
- QEMU

>[!NOTE]
>QEMU can work with KVM to provide CPU and Memory passthrough for native virtualization.

> [!NOTE] Performance
> Virtualbox uses both hardware and software virtualization. It is said to achieve better performance than QEMU, but QEMU/KVM is said to perform better than Virtualbox.
