- SLAAC (Stateless Address Autoconfiguration): Sets EUI-64 Network ID addresses based on the 48 bit MAC address of the network interface. This is done without dependence on a server, like DHCP.
- Static DHCPv6 (Dynamic Host Configuration Protocol v6):  Static DHCPv6 assigns IPv6 addresses based on MAC addresses, but this is done at the DHCPv6 server side rather than at a state.

# How to enable SLAAC in Windows
- `Set-NetIPv6Protocol -UseTemporaryAddresses Enabled`
- `Set-NetIPv6Protocol -RandomizeIdentifiers Disabled`
