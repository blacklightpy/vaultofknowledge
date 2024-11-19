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
## Protocols
### Web App Protocol
- WebAuthn by W3C
### Client To Authenticator Protocol 2 (CTAP2)
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
	- `linux-pam#616` discussion (Rejected)
	- Firefox and GNOME are waiting for `xdg-desktop-portal`
	- `xdg-credentials-portal` is also being developed
	- Alternative 1 (TPM <-> USB HID emulation): tpm-fido (U2F/FIDO2 keys in TPM)
	- Alternative 2 (Remote): Chrome supports QR code scanning to use phones via caBLE