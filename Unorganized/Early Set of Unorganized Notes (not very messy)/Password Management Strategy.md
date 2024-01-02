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
- Do: Password rotate after check-in/check-out e.g. Buttercup
- KISS: https://xkcd.com/936/
- IANA has key signing ceremonies
- Password managers can do other things to add to your security. (Expand)
	Share and manage your passwords between all your devices, including mobile devices.
	Share and manage passwords and credentials with co-workers.
	Store more than just passwords securely.
	GPG and SSH keys and passphrases
	One-time password generators
	Recovery keys
	Security questions
	API keys
	Notes
	Credit cards (arguably better than saving them on web sites)
	Bank accounts
	Memberships
	Software licenses
	Inform you of insecure passwords
	Reused passwords
	Password breaches
	Generate secure passwords
	Auto-fill passwords (avoids being shoulder surfed)
	Auto-record new accounts
	Protection against ransomware (if it stores your vault elsewhere)

## Users
- Store passwords hashed and salted
- I guess - give option for full security vs managed security; or have verification systems.

- NIST Guidelines https://www.n-able.com/blog/password-management
	- Favour the user
	- Longer, the better
	- Forget composition
	- No more expiration without reason - like phishing
	- SMS should not be used for 2FA