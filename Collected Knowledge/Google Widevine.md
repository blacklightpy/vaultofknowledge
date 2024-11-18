It is a DRM protocol. It runs on a Trusted Execution Environment (TEE).

Windows and macOS require hardware libraries and browser support for using Widevine.
Linux only requires browser support for using Widevine.

Windows and macOS are very restrictive about who they allow to use Widevine.

So small browsers on Windows and macOS are unable to play Widevine.
But browsers on Linux can play Widevine easily.

Widevine has three levels of execution. L1, L2 and L3.
Linux only supports L3, which can only play up to 720p HD.
Windows and macOS support L1, which can play at the highest qualities, including Full HD and 4K.
# Terms
- TV Terms
	- Over The Top (OTT)
	- Service: Pay-TV
	- Head-End (Transmitter): Network Operations Center (NOC)
	- User-End: Set Top Box (STB)
- Media Standards
	- Motion Pictures Expert Group (MPEG)
		- MPEG-2
	- Digital Video Broadcasting (DVB)
		- Satellite: DVB-S/S2
		- Terrestrial / Over the Air: DVB-T/T2
		- Cable: DVB-C/C2
- Systems
	- Conditional Access Systems (CAS)
		- used for pay-TV
		- Supported by MPEG-2 and DVB standards
		- One-way standard due to RF/Cable transmissions
	- Digital Rights Management (DRM)
- CAS Systems
	- Details to decrypt content were hidden in the STB due to the one-way nature of media
	- Secrets
		- Subscriber Entitlements (“Channel Line-up”)
		- Keys used to decrypt
			- Entitled Management Messages (EMM)
			- Entitled Control Messages (ECM)
	- This led to the emergence of smart cards to store and protect those secrets
	- Removable Smart Cards ended up being cloned
	- Renewing Cards periodically was expensive to the TV operator
- DRM Systems
	- IP based
	- It's a superset of CAS
		- It can protect more than video and audio, like e-books and bytecode
		- It can protect content offline, online and without a return channel
	- DRM reduces the Total Cost of Ownership (TCO) of the TV operator
	- Verified Media Path (VMP)


- DRM License
- AES Encryption vs DRM
- Types of DRM
	- Marlin DRM
	- Expressplay DRM
	- MovieLabs
		- Enhanced Content Protection (ECP) specification

- Multi-DRM
- MPEG Common Encryptions (CENC) standard
	- AES-CTR
	- AES-CBC
- Standards
	- W3C Encrypted Media Extensions (EME)
		- APIs for provisioning the browser media stack with DRM license required to play the content
		- Modules
			- Content Decryption Module (CDM)
				- Evaluates rules in the DRM license to ensure the content keys are handled securely
	- Media Source Extensions (MSE)
	- Content Protection Information Exchange Format (CPIX)
	- SPEKE

- Common Media Application Format (CMAF)
- Widevine
	- Standards used
		- MPEG Common Encryption (CENC)
		- W3C Encrypted Media Extensions (EME)
		- Media Source Extensions (MSE)
		- Dynamic Adaptive Streaming over HTTP (DASH)
		- Apple HTTP Live Streaming (HLS)
	- Definitions
		- Verified Media Path (VMP)
			- In Widevine, the desktop browser CDM (EME API's module) supports VMP
			- VMP lets you verify browser authenticity, to know it is sanctioned by Widevine
				- All Widevine browser integrations should support VMP
				- Linux does not have VMP
			- Once CDM decrypts the media, it must also be securely processed by the browser
			- When a browser is combined with a native DRM client, when video playback is about to start, decryption occurs through a Secure Video Path, enforcing the rules of the hardware-based DRM client.
			- When a browser is not combined with a native DRM client, CDM uses a software-based DRM client, like what Chrome or Firefox uses. In these cases, the desktop browser CDM includes support for VMP.
			- VMP ensures Widevine has sanctioned the browser's implementation of media processing.
			- Google deprecated all CDM versions that do not support VMP to stay current with Chrome releases.
			- Google also enforced VMP from the Widevine DRM license servers to only allow CDMs that support VMP.
			- But Linux browsers get a free pass, by using a dedicated flag, because of Google's support. But this only gives up to L3 support.
