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
	- pay-TV
	- Network Operations Center (NOC)
	- Set Top Box (STB)
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
	- Digital Rights Management (DRM)
- CAS Systems
	- Smart Cards
		- Entitled Management Messages (EMM)
		- Entitled Control Messages (ECM)
- DRM Systems
	- Verified Media Path (VMP)


The first Conditional Access System (CAS) was designed during the mid-nineties with the emergence of the MPEG-2 and Digital Video Broadcasting (DVB) standards, although there are also non-DVB CAS products from other vendors. DRM technology was developed during the end of the nineties although the majority of DRMs only came a decade later with the proliferation of the internet.

The role of a CAS is to provide key management and protect television transmissions over RF-based networks, such as satellite (DVB-S/DVB-S2 standards), terrestrial/over-the-air (DVB-T/T2), and cable (DVB-C/C2). The CAS design had to consider that the transmission was “one-way” in nature, without any return channel from the STB back to the head-end. Because of the lack of a return channel, it was necessary to find ways to hide the “pay-TV secrets” in the STB, such as subscriber entitlements (“channel line-up”) and various keys used to access/decrypt entitlement management messages (EMM), and entitlement control messages (ECMs), holding the content encryption key required for the STB to decrypt the content. This led to the emergence of so-called smart cards (similar to chip-based credit cards) to store and protect those secrets. Removable smart cards turned out to be costly since they were subject to various forms of piracy, including smart card cloning, and have to be replaced every couple of years, typically at the expense of the pay- TV operator. For U.S. cable networks, CableCARD filled the same role. Later, various software-based CAS were offered, taking advantage of advanced STB system-on-a-chip technology.

Digital rights management (DRM) systems, on the other hand, were designed for IP-based, two-way networks, as exemplified by the internet. DRM technology takes advantage of the two-way nature of communication, which allows the receiver (STBs, mobile devices, PC/Macs, etc.) to request information (keys and licenses) from the head-end. Because of the two-way nature, DRM systems are inherently more flexible. This may include rules for how many times, or for how long time, specific content may be played back, and whether it can be copied to other devices and even downloaded for offline playback, for example during travel.

With the rapid growth of video streamed (transmitted) over the internet using adaptive bitrate protocols such as those used by major OTT operators like Netflix and Hulu, OTT DRM technology has advanced to the forefront. CAS technology is gradually being phased out as broadcasters add on-demand services over IP and thus can take advantage of the two-way nature of IP-based networks. For today’s OTT pay-TV operators, a [**cloud-based multi-DRM** **service**](https://www.expressplay.com/blog/drm-as-a-service-lowers-the-tco-of-multi-drm-support/) is the best choice to achieve secure OTT streaming.

Effectively, DRM functionality is a superset of CAS. While a CAS is limited to broadcast devices and it only applies to video/audio content, DRM protects content on any device with various distribution models (offline, online, with or without return channel), and can also be applied to other types of digital content such as e-books, bytecode, and more.

Two-way IP-based networks have of course also had a major impact on other technologies and services such as video analytics and addressable advertising.

For broadcasters with legacy CAS deployments and an intention to modernize the security infrastructure to support hybrid broadcast-OTT services, read the blog post [How DRM-based converged security reduces TCO of Broadcast TV](https://www.expressplay.com/blog/how-drm-based-converged-security-reduces-tco-of-broadcast-tv/).

If you have other questions, feel free to [**contact our team**](https://www.expressplay.com/contact-us/) to discuss your content security requirements or concerns.

Learn more about Expressplay DRM [**here**](https://www.expressplay.com/products/multi-drm/).

What is DRM license management and how does a typical DRM license mechanism work?

How is DRM different from stand-alone AES encryption?

How can I protect multi-screen OTT streaming and why are there several different types of DRMs?

What is Marlin DRM and how is it different?

What is MovieLabs and its Enhanced Content Protection specification?

Is there a formal DRM certification process used by Hollywood and other studios?

How does a cloud-based DRM service compare to an on-premises DRM system?

Should I buy or build a multi-DRM solution?

What are common forms of digital media piracy?

What is forensic watermarking and can it help to deter piracy and content theft?

How can anti-piracy services protect the monetization of live events including live OTT sports?

Are there formal and/or de facto industry standards for content protection and DRM systems?

What is the MPEG Common Encryption (CENC) standard?

Why does the CENC standard allow for two different encryption modes, AES-CTR and AES-CBC?

What is the purpose of the Encrypted Media Extensions (EME) and Media Source Extensions (MSE) standards?

What is the advantage of the Content Protection Information Exchange Format (CPIX) standard?

What is SPEKE and how does it compare to the CPIX standard?

How do web browsers support DRM-protected video streaming?

What is the purpose of a Content Decryption Module (CDM)?

What does the Common Media Application Format (CMAF) accomplish?

How do set-top box chipsets enable protection of premium Ultra HD content?

What is the difference between software-based and hardware-based security?

What is Widevine Verified Media Path (VMP) and are there best practices to consider?

Per Widevine, “the Widevine Desktop Browser Content Decryption Module (CDM) includes support for Verified Media Path (VMP). VMP provides a method to verify the authenticity of the browser framework. For browser deployments, this will provide an additional signal to determine if a browser-based implementation is sanctioned by Widevine. All Widevine browser-based integrations (platforms and applications) must support VMP. VMP support is NOT available for Linux platforms.”

Thus, VMP support is crucial for a browser-based video player to decrypt [Widevine DRM](https://www.expressplay.com/products/google-widevine-drm/) protected content. The W3C Encrypted Media Extension (EME) specification defines the APIs that web apps can use for provisioning the browser’s media stack with the DRM license required to play protected content.

A critical module of EME is a trusted component called the Content Decryption Module (CDM), which evaluates the rules specified in the DRM license to ensure that content keys are handled securely. Once the media has been decrypted by the CDM, it is essential that the browser is able to securely process the so- decrypted media.

When the browser is combined with a native DRM client, and when video playback is about to start, content decryption occurs through a Secure Video Path (SVP), enforcing the rules of the “hardware-based DRM client.” When the browser is not paired with a native DRM client, the CDM is mostly using a “software-based DRM client,” such as Chrome or Firefox browsers running on desktop computers. In these cases, the Widevine desktop browser CDM includes support for VMP, a feature that ensures Widevine has sanctioned the browser-based media processing implementation. For more details, please refer to What is the difference between software-based and hardware-based security?

Over time, Google has deprecated all CDM versions that do not support VMP and today requires VMP for all browser CDM implementations to stay current with the stable Chrome releases. This requirement is intended to make sure that the updates are applied with support for the latest APIs. More recently, Google also adopted a policy of enforcing the VMP requirement, which means Widevine DRM license servers by default will issue licenses only for CDMs that support VMP.

To avoid problems for subscribers, these best practices are crucial with Widevine DRM:

**OTT service providers** must instruct their subscribers to update their browser and related components (including CDM) to the latest version. This automatic update process is usually performed seamlessly for browsers on Mac OS X and Windows OS. However, the automatic update may not always be successful and, consequently, some subscribers are unwittingly using a Chrome browser version with a deprecated CDM without support for VMP. As a result, they will not be able to play Widevine DRM protected content.

For **desktop Linux browsers** that do not support VMP, it is possible to override the default Widevine DRM license server behavior by specifying a dedicated flag and still issue a license to grant playback. The ExpressPlay DRM service will provide a mechanism to override the default Widevine license server if needed.