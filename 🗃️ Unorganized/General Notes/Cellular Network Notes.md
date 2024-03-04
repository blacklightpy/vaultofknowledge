- Electromagnetic Waves
- Communication Technologies
	- Wired and Wireless
	- Signal Modulation Schemes
	- Channel Access Schemes
- Radio Access Technologies
	- Air Interfaces / Channel Interfaces / Radio Links
		- Channel Access Schemes
- Cellular Networks
- Radio Standards
	- Standards Organizations
	- Radio Access Technologies
		- Air Interfaces
			- Channel Access Schemes
	- Radio Access Networks​
		- User Equipment
		- Radio Network System
			- Base Transceiver Station / Node B
			- Base Station Controller / Radio Network Controller
		- Core Network
			- Public Switched Telephone Network
				- Telephone Exchanges
- Generations of Cellular Networks
- Additional Technologies
	- Multiple Input-Multiple Output
	- Space Division Multiple Access
	- Beamforming
# Notes

A radio standard like GSM, EDGE, UMTS, etc. defines a **radio access technology (RAT)**. For GSM, it is GRA, for EDGE, ERA (combined for 2G as GERA), for UMTS, UTRA, for LTE, E-UTRA and for 5G NR, NG-RA.

All these RATs are part of the wider **radio access network (RAN)** that inculdes them, like GERAN, UTRAN, E-UTRAN, 5G-RAN. 

RAN is basically the network that uses RAT to connect the **user equipment (UE)** to the **core network (CN)**. The operator side **radio network system (RNS)** consists of a **base transceiver station** and a **base station controller**, or **radio network controller (RNC)**.

The base station is called a BTS in GSM or Node B in UMTS (eNodeB in LTE and gNodeB in 5G NR). The newer base stations are more miniaturized, and eNodeB functions as both the Node B and RNC.

A RAT further defines a set of air-interfaces, which define the links between two terminals. They are combinations of the aforementioned channel access methods like CDMA and OFDM/OFDMA.

Examples of **air interfaces** are TDMA, FDMA, W-CDMA, TD-CDMA, TD-SCDMA and OFDMA (also the name for the air interface).

The IMT-2000 standards (for 3G) define W-CDMA, CDMA2000, TD-SCDMA, EDGE and DECT. Of these, W-CDMA and TD-SCDMA are as you can see air interfaces.

The **standards committees** definiting 3G standards were the 3GPP Alliance and 3GPP2 (a competitor). This is compared to GSMA for GSM and EDGE, but they are now a division of 3GPP, which handles all cellular networks. Also IEEE handles Wi-Fi and Wi-Max.

3GPP defined initially UMTS, then HSPA and HSPA+ for 3G, and later LTE. 3GPP2 was developing the competitor of UMTS, CDMA2000, which was meant to succeed cdmaOne (2G). They also developed UMB for 4G, but the industry preferred LTE and they lost out.

Btw, cdmaOne (IS-95) was the first to use the CDMA scheme, which is based on spread spectrum multiple access technologies like DSSS and FHSS.

GSM on the other hand was based on TDMA, and it also used FDMA to seperate cells (cellular networks consist of "cells" of network stations).

FDMA was also mainly used by the 1G network AMPS, which was upgraded by the 1.5G/2G network D-AMPS, which used TDMA.

Unlike CDMA2000, cdmaOne was a bit more popular, but they didn't have SIM cards. So people found less freedom with regards to operator switching, and chose the GSMA/3GPP route. By the time CDMA2000 came with R-UIM cards, they'd already lost market share.

Although CDMA2000 is defined by IMT-2000, CDMA2000 1X and 1X-Advanced are considered 2.9G, while CDMA2000 1X EV-DO (EV-DO) is 3G. Revisions of EV-DO are considered 3.9G/4G too.

UMTS defined, as I said UTRAN as the RAN, or UTRA as the RAT. It defines three air interfaces - W-CDMA, TD-CDMA and TD-SCDMA.

RATs utilize channel duplexing for the base station and the user to have simultaneous uplink and downlink. FDD and TDD are the two forms of duplexing used in UMTS/UTRA.

UTRA-FDD uses W-CDMA with DSSS. W-CDMA is standardized as IMT-2000 CDMA Direct Spread.

UTRA-TDD uses TD-CDMA and TD-SCDMA, both of which are combinations of TDMA and CDMA. They are standardized as IMT-2000 CDMA TDD / IMT-2000 Time Division (IMT-TD).

So you see, out of 3G, only UMTS-FDD used W-CDMA, although that was the most popular scheme, so UMTS is often synonymous with W-CDMA.

TD-SCDMA was made by China and was incompatible with the other two, making it less popular.

HSPA and HSPA+ are upgrades to UMTS. HSPA consists of HSUPA and HSDPA (uplink and downlink) standards. They are included under TD-CDMA. HSPA is considered 3.5G or 3G+, and HSPA+ is considered 3.75G.

EDGE was an improvement over GSM (Enhanced Data rates for GSM Evolution / Enhanced Data rates for Global Evolution), in 2G. But it was so good that it is also called 2.75G. Another name for EDGE was EGPRS. GPRS was a 2.5G standard.

Then Evolved EDGE which was 2.875G. The IMT-2000 standardization considers both EDGE and Evolved EDGE as 3G too.

DECT was yet another less popular standard that's considered 3.9G/4G.

Then they started working on LTE. LTE is basically the evolution of UMTS, and the RAN was E-UTRAN. E-UTRA specified as air interfaces OFDMA with MIMO antenna technology for downlink and OFDMA along with a precoded version of OFDM called SC-FDMA for uplink. In later releases, SDMA/MIMO, SU-MIMO and MU-MIMO were also supported for uplink.

**SDMA** is another channel access method.

**MIMO (Multiple Input/Multiple Output)** basically means the use of multiple antennas for exploiting multipath propagation of radio waves. MU-MIMI (Multi User MIMO) of forms 2x2, 3x3, 4x4 and 8x8 are being used in new Wi-Fi routers and will be popular in Wi-Fi 6 and Wi-Fi 6E.

Introduced with EV-DO, SDMA, MIMO and Beamforming were new technologies that could be used to improve performance.

LTE was initially considered 3.9G/3.95G before being called 4G. In Turkey, LTE and LTE Advanced were together called 4.5G. So due to market pressures and improvements over 3G, HSPA+ was also added to the definition of 4G, alongside LTE and WiMAX. EV-DO Revisions A/B/C and DECT also somewhat make the list. The ITU-R standard for 4G is IMT-Advanced, like IMT-2000 for 3G.

And for 5G, the standard is IMT-2020.

Since I explained this much, here are some more and a summary:

- 0G (Analog)
	- PTT
	- MTS
	- IMTS
	- RCC
	- AMTS
- 1G (Analog - Digital)
	- NMT
	- AMPS
	- Digital AMPS IS-54 (1.5G/2G)
	- Digital AMPS IS-136 (1.5G/2G)
- 2G
	- GSM
	- cdmaOne/IS-95, GPRS (2.5G)
	- EDGE/EGPRS (2.75G)
	- Evolved EDGE/EDGE Evolution (2.875G)
	- CDMA2000 1X/1x/1xRTT/IS-2000 (2.9G/3G)
		- 1x RTT means 1x bandwidth of IS-95
	- CDMA2000 1X Advanced (2.9G/3G)
- 3G
	- UMTS
	- CDMA2000 1X EV-DO Release 0
	- HSPA (3.5G/3G+)
	- HSPA+ (3.75G)
	- LTE (3.9G/3.95G/4G)
	- EV-DO Revision A (3.9G/3.95G/4G)
	- EV-DO Revision B (3.9G/3.95G/4G)
	- EV-DO Revision C (3.9G/3.95G/4G)
	- WiMAX (3.9G/3.95G/4G)
	- DECT (3.9G/4G)
- 4G
	- LTE Advanced (4.5G)
	- LTE Advanced Pro (4.5G Pro/pre-5G/5G E/4.9G)
	- WiMAX Release 2
		- WiMAX Release 2.1 and Release 2+ are interoperable with LTE-TDD
- 5G
	- 5G NR
		- ng-eNodeB allows LTE devices to connect to a 5G network, using LTE radio
	- WiMAX Release 3
		- Also interoperable with LTE-TDD
	- 5G Advanced (5.5G)
	- NB-IoT (5.5G)
	- LTE-M/LTE-MTC (5.5G)
	- DECT-2020 NR/New Radio+
	- EUHT
- 6G uses mmwave (30-300 GHz), and may also use THz radiations (300-3000 GHz).