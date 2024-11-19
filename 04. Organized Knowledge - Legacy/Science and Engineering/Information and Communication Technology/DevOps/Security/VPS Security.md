* Set a strong sudo password, and root password
* Disable root login - to prevent hackers from bruteforcing it - use sudo

```
$ nano /etc/ssh/sshd_config
PermitRootLogin no
```

* Change SSH port - from 22
* Disable unused ports - iptables and ip6tables - ufw on Ubuntu
* Update packages - using cronjob
* make /boot read-only
```
$ nano /etc/fstab
LABEL=/boot /boot ext2 defaults, ro 1 2
```
* Clean out unwanted packages
* For docs, set up PKI encryption - GnuPG - encrypt receiving messages
* zK encryption - all encryption/decryption on client side
* Have a strong password policy
* Use SFTP instead of FTP/FTPS
* Use a CDN (cloudflare)
* TLS 1.2/1.3 (Cloudflare/Let'sEncrypt) - 'Server to CDN' and 'CDN to Browser'
* Install AV to scan for viruses in eMails - ClamAV
* Install rootkit scanner - chrootkit
* Use an IDS ([[Intrusion Detection System]]) + IPS - HIDS, not NIDS - OSSEC/Security Onion
* Virtualmin instead of cPanel - for use with CMS - and backups
* Disable anonymous FTP uploads

Extra steps:

* Use Lynis for pen-testing (HIDS, Firewall setups)
* Refer https://github.com/sbilly/awesome-security


Tags:

[[System Security]]
[[Virtual Private Server|VPS]]