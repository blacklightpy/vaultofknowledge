- Basically, A and B are under a firewall (like NAT), and can't connect to each other
- They both can connect to C by some protocol
- Keeping the connections to A and B alive, C can extend the same link to connect A and B
- By this method, A and B achieve a direct connection, much like punching a hole in the firewall

e.g. NAT Hole Punching (mostly by UDP hole punching)