Mail servers have two parts:

- **MSA - Mail Submission Agent** (also known as **MDA - Mail Delivery Agent**)
- **MTA - Mail Transmission Agent**

MTA and MSA may not be on the same server always

A third part for the client side is the **MUA - Mail User Agent**, or the mail reader.

## Google mail server addresses

* smtp-relay.google.com - SMTP Relay
* smpt.google.com - CNAME to gmail-smtp-msa.l.google.com; normal Gmail/GWorkspace mail; Port 465 (SSL)/Port 587 (TLS)
* aspmx.l.google.com - SMTP Restricted only to gmail/your GWorkspace organization; Port 25 (No TLS required); add SPF of domain to GAdmin Console
* gmail-smtp-in.google.com - MSA
* imap.google.com - CNAME too gmail-imap.l.google.com
* pop.google.com (may be a CNAME too)

# Mail Server software
- Postfix - MTA (SMTP server)
- Dovecot - MDA (IMAP/POP3 server)
- Mail-in-a-box/iRedMail - AIO
- /usr/bin/mail - Mail shells (Provided by bsd-mail, heirloom-mail, GNU mailutils)
- /usr/sbin/sendmail (MTA - sendmail/exim/postfix)

MySQL/MariaDB - Virtual Mailboxes

![[Mail Server Architecture.png]]

[Mail terminology: MTA, MUA, MSA, MDA, SMTP, DKIM, SPF, DMARC | Sysadmin](https://afreshcloud.com/sysadmin/mail-terminology-mta-mua-msa-mda-smtp-dkim-spf-dmarc)