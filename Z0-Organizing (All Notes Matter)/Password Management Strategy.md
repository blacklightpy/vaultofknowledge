## Company
- Establish a single source of contact
- Make employees responsible
- Change passwords when an employee leaves
- Have audit trials (?). Use something like Azure AD

- CIA Triad - Confidentiality, Integrity, Accessibility
- Stay accountable - have a different password for each user
- Only trusted DBAs should have the main password
- Have enterprise profiles that give permission to login to server
- All passwords can be modified by a master account/multiple ones.
- Idea: [[Shamir Secret Sharing]]
- Don't use MD5/SHA. Use adaptive hashing like bcrypt.

## Users
- Store passwords hashed and salted
- I guess - give option for full security vs managed security; or have verification systems.