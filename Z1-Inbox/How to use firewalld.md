At the kernel level, firewalls are managed by the kernel netfilter.

iptables, or the newer nftables utility acts as an interface to netfilter.

They can further use either ufw or firewalld as the easy to use interfaces.

ufw was made by Ubuntu, and is used in Debian and Ubuntu based distros.
firewalld was made by Red Hat and is used in Fedora, openSUSE, etc.

# UFW (Uncomplicated Firewall)

ufw is a frontend to iptables. It also offers a GUI frontend named gufw.

The usage is pretty straightforward.
e.g: `sudo ufw allow ssh/tcp`

By default, the firewall rules apply to all interfaces. More specific rules can be applied too.
e.g: `ufw allow in on eth0 to any port 80 proto tcp`

# firewalld
firewalld is a firewall frontend that has zone management. This means that firewall rules can be applied for specific zones, to which networks are assigned.

It is a component of the systemd init system, and is a frontend to either of iptables or the newer nftables, which are interfaces to the kernel's netfilter.

firewalld is controlled by the command `firewall-cmd`.

To use the firewall, we have to assign a network interface to a zone. By default, all devices use the public zone.
e.g:
`firewall-cmd --permanent --zone=public --add-service=http`
`firewall-cmd --zone=public --add-port=80/tcp`

For each zone, we can add firewall rules such as enabling or disabling services or ports. More specific rules can be specified by adding a rich rule.

Specific Wi-Fi connections can also be assigned to seperate zones using NetworkManager.
e.g: `nmcli connection modify 'YourConnectionName' connection.zone home`