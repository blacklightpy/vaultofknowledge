Terms: Virtualization, Sandboxes, Containers

- LXD/LXC (Snap package; OVH uses it)
---
- Docker
- RKT (Rocket) - Fedora CoreOS
- Fedora Silverblue
- Kubernetes/K8s
---
- systemd-nspawn - Facebook uses it


VMS
-------
Xen/KVM (uses HVM)
QEMU (Emulator and Virtualization - Can be a hypervisor using Xen/KVM for virtualization)
libvert (Manage multiple hypervisors and emulators (Xen, KVM, LXC, OpenVZ, Virtualbox, etc.) in an unified manner)
GNOME Boxes (uses KVM, QEMU, libvert, SPICE), Virt-manager (GUI for libvirt)

![[Pasted image 20220331153115.png]]

Containers
----------------------------
LXC (Linux Containers)
LXD (Manager/Hypervison for Containers (LXC) and VMs (QEMU), Waydroid
containerd
Docker, Podman, Kubernetes (was based on Docker, now uses containerd)
Toolbox, buildah

Sandboxes
-----------
Flatpaks, Snap, chroot, Systemd-nspawn, libvirt-sandbox
Chroot Jail, FreeBSD Jail

