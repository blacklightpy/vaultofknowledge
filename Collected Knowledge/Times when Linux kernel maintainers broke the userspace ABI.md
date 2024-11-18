- K3b bug
- Ending support for ELF binaries (they introduced a compatibility tool before doing it though)
- Linux 3.14 broke 16 bit programs running on WINE (which was due to an urgent security bugfix, which was later fixed)
- They made a networking code change to disallow IP packets with the address 0.0.0.0 which was used by DHCP. This required all DHCP programs to be rewritten to use Ethernet packets directly instead of IP packets.
	- This was done so that DHCP gets exclusive access the 0.0.0.0, while other programs don't get to use that address. This is not a documented behaviour of the TCP/IP protocol, however it is what everyone follows.
# When it did not
- The [[Open Sound System|OSS]] to [[Advanced Linux Sound Architecture|ALSA]] transition did not break the userspace ABI.
- The introduction of cgroups v2 API did not break the cgroups ABI