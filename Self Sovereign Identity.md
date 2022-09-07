Self Sovereign Identity (SSI) is a system in which the user has their own identity, and merely uses the services from a platform using their identity.

This is in contrast to using an identity provider such as Google or Facebook to sign in to multiple services, and use seperate accounts elsewhere. In self-sovereign identity, the user is identified by their own identity instead of an account.

This way, the user can have a persistent online identity without having to rely on identity provider.

This is established most commonly using decentralized technologies. They require identities to by synced across devices securely, and this is evolving with support from Operating System companies like Microsoft and Google.

# Implementations
- FIDO2 by FIDO Alliance
	- Keys are only locally stored: Local Biometric, PIN or DocAuth
	- Keys for each website are different, so users cannot be tracked across websites
	- It can be easily implemented using a simple JS API