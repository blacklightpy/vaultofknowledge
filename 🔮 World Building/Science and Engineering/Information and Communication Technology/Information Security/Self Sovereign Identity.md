Self Sovereign Identity (SSI) is a system in which the user has their own identity, and merely uses the services from a platform using their identity.

This is in contrast to using an identity provider such as Google or Facebook to sign in to multiple services, and use seperate accounts elsewhere. In self-sovereign identity, the user is identified by their own identity instead of an account.

This way, the user can have a persistent online identity without having to rely on identity provider.

This is established most commonly using decentralized technologies. They require identities to by synced across devices securely, and this is evolving with support from Operating System companies like Microsoft and Google.

**Some Problems of SSIs:** https://info.vismaconnect.nl/blog/self-sovereign-identity
**Other Reads:** https://www.linkedin.com/pulse/dystopia-self-sovereign-identity-ssi-philip-sheldrake/ (Read 75%)

**Personal Note:**
	I think SSIs emerge from the problem of lack of trust. For one, you always require carrying around your cellphones, and in some highly secure cases, even fingerprint and facial recognition don't seem to suffice. Also keeping the identity with your own self means that you'll have to reapply for your certificates anytime you lose your identity, since we are not (and not trying to be) robots and can't tie our identity into our bodies. Measures to regenerate the identity like taking proof from a few trusted friends again opens up the possibility of social engineering.
	In a way, there cannot be a perfect solution for human greed. The best we can do is to choose an acceptable solution for now, and be ready to fight, and show a better model for others so that people won't fall into the same situations that caused the need to do hack others.
Keywords: DKMS
# Implementations

> [!NOTE]
> SSI Does not always require using a blockchain. It can be done using [[Public Key Cryptography]], Peer-to-Peer methods and using IPFS. Read more here: https://academy.affinidi.com/do-you-need-blockchain-for-enabling-ssi-452d62b34890
- Affinidy
- FIDO2 by FIDO Alliance
	- Keys are only locally stored: Local Biometric, PIN or DocAuth
	- Keys for each website are different, so users cannot be tracked across websites
	- It can be easily implemented using a simple JS API
- Sovrin
	- Built on Hyperledger Indy, a DLT specifically built for decentralized identity

Links:
[[Web of Trust]]
Tags:
#cryptography 