Mail servers have two parts:

**MSA - Mail Submission Agent**
**MTA - Mail Transmission Agent**

MTA and MSA may not be on the same server always

## Google mail server addresses

* smtp-relay.google.com - SMTP Relay
* smpt.google.com - CNAME to gmail-smtp-msa.l.google.com; normal Gmail/GWorkspace mail; Port 465 (SSL)/Port 587 (TLS)
* aspmx.l.google.com - SMTP Restricted only to gmail/your GWorkspace organization; Port 25 (No TLS required); add SPF of domain to GAdmin Console
* gmail-smtp-in.google.com - MSA
* imap.google.com - CNAME too gmail-imap.l.google.com
* pop.google.com (may be a CNAME too)

# Mail Server software
Postfix - SMTP server
Dovecot - IMAP/POP3 server
Mail-in-a-box/iRedMail - AIO

MySQL/MariaDB - Virtual Mailboxes

![[Pasted image 20220401001446.png]]

[Mail terminology: MTA, MUA, MSA, MDA, SMTP, DKIM, SPF, DMARC | Sysadmin](https://afreshcloud.com/sysadmin/mail-terminology-mta-mua-msa-mda-smtp-dkim-spf-dmarc)