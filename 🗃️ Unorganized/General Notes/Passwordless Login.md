## Credentials
### Specifications
- U2F by FIDO Alliance
- FIDO2 by FIDO Alliance (Passkeys)
### Stores
- Hardware Security Modules
- Trusted Platform Module
- Password Managers
### Terms
- Industry: Passkeys
- FIDO Alliance: Multi-Device FIDO Credentials & Single-Device FIDO Credentials
- Yubico: Copyable Passkeys & Device-Bound Passkeys
## Protocol
### Web App Protocols
- WebAuthn by W3C
### Communication Protocols
- caBLE (Cloud Assisted BLE) protocol to authenticate using smartphones
## Operating Systems
- macOS: Native with Cloud Sync
- Windows: Native, Cloud Sync in works
- Linux: Native in works
  - tpm-fido (U2F/FIDO2 keys in TPM)
  - linux-pam#616 discussion
  - Firefox and GNOME are waiting for xdg-desktop-portal
  - Chrome supports QR code scanning to use phones via caBLE
  - xdg-credentials-portal is also being developed