- Code Division Multiple Access (CDMA)
	- DS-CDMA
- Frequency Division Multiple Access (FDMA)
	- Orthogonal Frequency Division Multiple Access (OFDMA)
	- Single Carrier Frequency Division Multiple Access (SC-FDMA) / Linearly Pre-coded OFDMA (LP-OFDMA)
- Wavelength Division Multiple Access (WDMA)
- Time Division Multiple Access (TDMA)
	- Multi Frequency Time Division Multiple Access (MF-TDMA)
- Space Division Multiple Access (SDMA)
# Notes
## Code Division Multiple Access
### Direct Sequence Code Division Multiple Acces
DS-CDMA (Direct Sequence Code Division Multiple Access) is a multiple access scheme based on [[Direct Sequence Spread Spectrum|DSSS]], by spreading the signals from/to different users with different codes. 

It is the most widely used type of CDMA.
## Frequency Division Multiple Access
It is based on [[Frequency Division Multiplexing]] (FDM).
### Orthogonal Frequency Division Multiple Access
### Single Carrier Frequency Division Multiple Access
Single Carrier FDMA (SC-FDMA) is also known as Linearly Precoded OFDMA (LP-OFDMA).

It is based on Single Carrier Frequency Domain Equalization (SC-FDE). 
## Wavelength Division Multiple Access
It is based on [[Wavelength Division Multiplexing]] (WDM).
## Time Division Multiple Access
It is based on [[Time Division Multiplexing]] (TDM).
### Multi Frequency Time Division Multiple Access
It combines TDMA and FDMA, like in GSM.

In GSM, the frequency channel is divided into eight time slots, of which seven are used for seven phone calls, and one for signaling data.


---

- Statistical time-division multiplexing multiple access
	- Carrier-sense multiple access with collision detection (CSMA/CD) 
	- Carrier-sense multiple access with collision avoidance (CSMA/CA) 

- frequency-hopping CDMA (FH-CDMA)
	- based on FHSS.
		- As an example, the Bluetooth communication system is based on a combination of frequency-hopping and either CSMA/CA statistical time-division multiplexing communication (for data communication applications) or TDMA (for audio transmission)
		- All nodes belonging to the same user (to the same piconet) use the same frequency hopping sequence synchronously, meaning that they send on the same frequency channel, but CDMA/CA or TDMA is used to avoid collisions within the VPAN.
		- Frequency-hopping is used by Bluetooth to reduce the cross-talk and collision probability between nodes in different VPANs.
- multi-carrier code-division multiple access (MC-CDMA).
- SDMA
	-  use directional antennas and power modulation to refine spatial transmission patterns.
- Power-division multiple access
	- Power-division multiple access (PDMA) scheme is based on using variable transmission power between users in order to share the available power on the channel. 


## Packet mode methods

Packet mode channel access methods select a single network transmitter for the duration of a packet transmission. Some methods are more suited to wired communication while others are more suited to wireless.

Common statistical time-division multiplexing multiple access protocols for wired multi-drop networks include:

- Carrier-Sense Multiple Access with Collision Detection (CSMA/CD) **(Used in Ethernet and IEEE 802.3)**
- Multiple Access with Collision Avoidance (MACA)
- Multiple Access with Collision Avoidance for Wireless (MACAW)
- Carrier-Sense Multiple Access (CSMA)
- Carrier-Sense Multiple Access with Collision Avoidance and Resolution using Priorities (CSMA/CARP)
- Bitwise Arbitration based on constructive interference as used on CAN bus
- Token bus **(IEEE 802.4)**
- Token Ring **(IEEE 802.5)**
- Token passing **(used in FDDI)**
- Dynamic Time Division Multiple Access **(Dynamic TDMA)**

Common multiple access protocols that may be used in packet radio wireless networks include:

- Carrier-sense multiple access with collision avoidance (CSMA/CA) **(used in IEEE 802.11/WiFi, potentially using a distributed coordination function)**
- ALOHA and slotted ALOHA (used in ALOHAnet)
- Reservation ALOHA (R-ALOHA)
- Mobile Slotted Aloha (MS-ALOHA)
- Code-division multiple access (CDMA)
- Orthogonal frequency-division multiple access (OFDMA)
- Orthogonal frequency-division multiplexing (OFDM)

Duplexing methods

Where these methods are used for dividing forward and reverse communication channels, they are known as duplexing methods. A duplexing communication system can be either half-duplex or full duplex. In a half-duplex system, communication only works in one direction at a time. A walkie-talkie is an example of a half-duplex system because both users can communicate with one another, but not at the same time, someone has to finish transmitting before the next person can begin. In a full-duplex system, both users can communicate at the same time. A telephone is the most common example of a full-duplex system because both users can speak and be heard at the same time on each end. Some types of full-duplexing methods are:

    Time-division duplex (TDD)
    Frequency-division duplex (FDD)
    Echo cancellation