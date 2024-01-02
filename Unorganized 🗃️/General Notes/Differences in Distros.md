TASK: Move some of these to a Linux lego blocks page, and only highlight the differences here.

# Init
Most distros: systemd

# Firewall
- openSUSE: Uses Yast2 with firewalld. Backend: nftables, can use iptables.
- Ubuntu: ufw, uses iptables backend.
- Oracle Cloud Infrastructure: Uses nftables backend, ufw doesn't work.

# Containerization
- Docker
- Docker Rootless
- Podman
- LXC