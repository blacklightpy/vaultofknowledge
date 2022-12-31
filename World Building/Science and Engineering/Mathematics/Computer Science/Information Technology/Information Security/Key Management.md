Key Management System (KMS) is responsible for maintaining the lifecycle of keys.
KMS should be connected to a centralized store, like an HSM.

Hardware Security Modules (HSM) are responsible for generation, maintenance and usage of keys. ^8c81cb

Trust Store: Where public information is stored for verifying certificates.
Key Store: Where private keys are stored for decrypting information.

Types of Keystores:
- Java Key Store
- IBM Certificate Management Systems
- OpenSSL Keystore
- Windows .pfx files
- HSMs