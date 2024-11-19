Mail servers have three parts:

- **MSA - Mail Submission Agent**
- **MTA - Mail Transmission Agent**
- **MDA - Mail Delivery Agent**

The MTA, MSA and MDA may not be on the same server always.

A fourth part for the client side is the **MUA - Mail User Agent**. It is also called (although not standardized by [[Internet Engineering Task Force|IETF]]) **MRA - Mail Retrieval Agent** if the client is capable of receiving mail in addition to being able to compose it.

They support the SMTP protocol for sending mails to mailboxes, and the POP3, IMAP and JMAP protocols for sending mails to email clients upon request.
## Google mail server addresses
**MSA:**
* gmail-smtp-in.google.com
* smtp.google.com - CNAME to gmail-smtp-msa.l.google.com
* gmail-smtp-msa.l.google.com - normal Gmail/GWorkspace mail; Port 465 (SSL)/Port 587 (TLS)
* aspmx.l.google.com - SMTP Restricted only to gmail/your GWorkspace organization; Port 25 (No TLS required); add SPF of domain to GAdmin Console
**MTA**
* smtp-relay.google.com - SMTP Relay

**POP3/IMAP Servers:**
* imap.google.com - CNAME to gmail-imap.l.google.com
* gmail-imap.l.google.com - IMAP Server
* pop.google.com (may be a CNAME too)
# Mail Server software

## Components
Components include: Mail User Agent, Mail Transfer Agent, Mail Delivery Agent, Anti-spam and Antivirus software
### MUA (SMTP/POP3/IMAP/JMAP Client)
In UNIX philosophy, the MUA and the MTA are decoupled. In other cases, MUA usually has a send-only MTA.

- BSD mailx
- heirloom-mailx
- S-mailx
- GNU mailutils

**Standard Shell:**
- /usr/bin/mail
### MSA / MTA / MDA (SMTP Client/Server)
**Full MTA (Relay Capable):**
- Sendmail
- Postfix
- Exim

**Minimal MTA (Send Only):**
- msmtp

**Standard Shell:**
- /usr/sbin/sendmail
### POP3/IMAP/JMAP Server
- Dovecot
## Full Servers
- Mail-in-a-box
- iRedMail

MySQL/MariaDB - Virtual Mailboxes

![[Mail Server Architecture.png]]

[Mail terminology: MTA, MUA, MSA, MDA, SMTP, DKIM, SPF, DMARC | Sysadmin](https://afreshcloud.com/sysadmin/mail-terminology-mta-mua-msa-mda-smtp-dkim-spf-dmarc)