## Credentials
### Specifications
- U2F by FIDO Alliance (2FA Hardware Keys used alongside traditional login)
- FIDO2 by FIDO Alliance (Password Keys used for standalone login, with biometrics, pins or hardware)
	- It has two key protocols:
		- Web Authentication (WebAuthn)
		- Client-to-Authenticator Protocol (CTAP)
### Stores
- [[Hardware Security Module]] (HSM)
- Trusted Platform Module (TPM)
- Password Managers
### Terms
- Industry: Passkeys
- FIDO Alliance: Multi-Device FIDO Credentials & Single-Device FIDO Credentials
- Yubico: Copyable Passkeys & Device-Bound Passkeys
## Protocol
### Web App Protocols
- WebAuthn by W3C
### Client To Authenticator Protocols (CTAP)
- OS Credential Manager (TPM)
- OS Credential Manager (Storage)
- Hardware Security Module
- Password Manager Extension
- Password Manager
- Nearby Device: caBLE (Cloud Assisted BLE) v2 protocol to authenticate using smartphones
## Operating Systems
- macOS: Native with Cloud Sync
- Windows: Native, Cloud Sync in works
- Linux: Native in works
	- tpm-fido (U2F/FIDO2 keys in TPM)
	- linux-pam#616 discussion
	- Firefox and GNOME are waiting for xdg-desktop-portal
	- Chrome supports QR code scanning to use phones via caBLE
	- xdg-credentials-portal is also being developed