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
- CENC standard
	- AES-CTR
	- AES-CBC
- Standards
	- W3C Encrypted Media Extensions (EME)
		- APIs for provisioning the browser media stack with DRM license required to play the content
		- Modules
			- Content Decryption Module (CDM)
				- Evaluates 
	- Media Source Extensions (MSE)
	- Content Protection Information Exchange Format (CPIX)
	- SPEKE

- Common Media Application Format (CMAF)
- Widevine
	- Verified Media Path (VMP)
		- Widevine Desktop Browser CDM supports VMP
		- VMP lets you verify browser authenticity, to know it is sanctioned by Widevine
		- All Widevine browser integrations should support VMP
		- Linux does not have VMP


A critical module of EME is a trusted component called the Content Decryption Module (CDM), which evaluates the rules specified in the DRM license to ensure that content keys are handled securely. Once the media has been decrypted by the CDM, it is essential that the browser is able to securely process the so- decrypted media.

When the browser is combined with a native DRM client, and when video playback is about to start, content decryption occurs through a Secure Video Path (SVP), enforcing the rules of the “hardware-based DRM client.” When the browser is not paired with a native DRM client, the CDM is mostly using a “software-based DRM client,” such as Chrome or Firefox browsers running on desktop computers. In these cases, the Widevine desktop browser CDM includes support for VMP, a feature that ensures Widevine has sanctioned the browser-based media processing implementation. For more details, please refer to What is the difference between software-based and hardware-based security?

Over time, Google has deprecated all CDM versions that do not support VMP and today requires VMP for all browser CDM implementations to stay current with the stable Chrome releases. This requirement is intended to make sure that the updates are applied with support for the latest APIs. More recently, Google also adopted a policy of enforcing the VMP requirement, which means Widevine DRM license servers by default will issue licenses only for CDMs that support VMP.

To avoid problems for subscribers, these best practices are crucial with Widevine DRM:

**OTT service providers** must instruct their subscribers to update their browser and related components (including CDM) to the latest version. This automatic update process is usually performed seamlessly for browsers on Mac OS X and Windows OS. However, the automatic update may not always be successful and, consequently, some subscribers are unwittingly using a Chrome browser version with a deprecated CDM without support for VMP. As a result, they will not be able to play Widevine DRM protected content.

For **desktop Linux browsers** that do not support VMP, it is possible to override the default Widevine DRM license server behavior by specifying a dedicated flag and still issue a license to grant playback. The ExpressPlay DRM service will provide a mechanism to override the default Widevine license server if needed.