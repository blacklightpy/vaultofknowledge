Terms: Virtualization, Sandboxes, Containers

- LXD/LXC (Snap package; OVH uses it)
---
- Docker
- RKT (Rocket) - Fedora CoreOS
- Fedora Silverblue
- Kubernetes/K8s
---
- systemd-nspawn - Facebook uses it


VMs
-------
Xen/KVM (uses HVM)
QEMU (Emulator and Virtualization - Can be a hypervisor using Xen/KVM for virtualization)
libvirt (Manage multiple hypervisors and emulators (Xen, KVM, LXC, OpenVZ, Virtualbox, etc.) in an unified manner)
GNOME Boxes (uses KVM, QEMU, libvert, SPICE), Virt-manager (GUI for libvirt)

![[Wikipedia - Virtualization Software.png]]

Containers
----------------------------
- LXC (Linux Containers)
- LXD (Manager/Hypervison for Containers (LXC) and VMs (QEMU), Waydroid

- Docker, Podman, Kubernetes (was based on Docker, now uses containerd), Openshift
- Toolbox, buildah, Distrobox

** "Docker images" are actually OCI compatible images
### Container Runtimes
runC, container-d, CRI-O, Kubernetes CRI
https://www.tutorialworks.com/difference-docker-containerd-runc-crio-oci/#cri-o
Sandboxes
-----------
**Kernel Level (BSD):** FreeBSD Jails
**Kernel Level (Linux):** chroot Jails
**Userland Level (Linux):** Flatpaks, Snap, Systemd-nspawn
**Hypervisor:** libvirt-sandbox