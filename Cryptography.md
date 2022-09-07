
## Questions
**Why do we need cryptography?**
We need cryptography to:
- Ensure secure communication between two parties
- Ensure that the message is sent by the same person
- And to prevent unauthorized access to information

**Why can't we trust self-signed Certificates?**
We cannot trust certificates that are self-signed, because X.509 certificates are trusted based on the authenticity of the Certificate Authority (CA) issuing the certificate.

Normal communication:
- The user verifies the certificate issued by a CA and uses it to encrypt his message
- The server uses the private key to decrypt the message

In case of self-signed certificates, there can be a Man-in-the-middle attack:
- The user trusts the self-signed certificate, thinking it was from the web server, and uses it to encrypt his message
- Man-in-the-middle (Hacker) actually supplied a fake self-signed certificate to the user, who can now read his message
- Hacker sends the message (optionally modified) by signing with the actual self-signed certificate of the website
- Website reads the message believing the message was sent by the user

Reference: https://en.wikipedia.org/wiki/Man-in-the-middle_attack