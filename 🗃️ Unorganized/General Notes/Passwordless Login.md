## Credentials
- U2F/FIDO2 Hardware Security Modules
- WebAuthn Passkeys
## Specifications
- U2F by FIDO Alliance
- FIDO2 by FIDO Alliance
  - WebAuthn by W3C (specification for web apps)
    - caBLE protocol to authenticate using smartphones (by BLE)
## Operating Systems
- macOS: Native with Cloud Sync
- Windows: Native, Cloud Sync in works
- Linux: Native in works
  - tpm-fido (U2F/FIDO2 keys in TPM)
  - linux-pam#616 discussion
  - Firefox and GNOME are waiting for xdg-desktop-portal
  - Chrome supports QR code scanning to use phones via caBLE
  - xdg-credentials-portal is also being developed