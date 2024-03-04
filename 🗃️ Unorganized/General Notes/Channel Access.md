It is also called Multiple Access.

Multiple access schemes are based on [[multiplexing]].
## Channel Based Methods
- Code Division Multiple Access (CDMA) / Spread Spectrum Multiple Access (SSMA)
	- Direct Sequence Code Division Multiple Access (DS-CDMA)
	- Frequency Hopping Code Division Multiple Access (FH-CDMA)
	- Multi Carrier Code Division Multiple Access (MC-CDMA)
	- Wideband Code Division Multiple Access (W-CDMA)
	- Time Division Code Division Multiple Access (TD-CDMA)
	- Time Division Synchronous Code Division Multiple Access (TD-SCDMA)
- Frequency Division Multiple Access (FDMA)
	- [[Frequency Division Multiplexing]] (FDM) based:
		- Orthogonal Frequency Division Multiple Access (OFDMA)
		- Single Carrier Frequency Division Multiple Access (SC-FDMA) / Linearly Pre-coded OFDMA (LP-OFDMA)
	- Wavelength Division Multiplexing (WDM) based:
		- Wavelength Division Multiple Access (WDMA)
- Time Division Multiple Access (TDMA)
	- Multi Frequency Time Division Multiple Access (MF-TDMA)
	- Self-organized Time Division Multiple Access (STDMA)
	- Statistical Time Division Multiplexing Multiple Access (STDM-MA) / Packet Mode
	- Dynamic Time Division Multiple Access (Dynamic TDMA)
- Space Division Multiple Access (SDMA)
	- High Capacity Spatial Division Multiple Access (HC-SDMA)
## Packet Mode Methods
### General (Statistical Time Division Multiple Access Methods)
- Carrier Sense Multiple Access (CSMA)
- Carrier Sense Multiple Access with Collision Detection (CSMA/CD)
- Carrier Sense Multiple Access with Collision Avoidance and Resolution using Priorities (CSMA/CARP)
- Multiple Access with Collision Avoidance (MACA)
- Multiple Access with Collision Avoidance for Wireless (MACAW)
- Bitwise Arbitration based on constructive interference as used on CAN bus
- Token bus
- Token Ring
- Token passing
- Dynamic Time Division Multiple Access (Dynamic TDMA)
### Wireless
- Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA)
- ALOHA and slotted ALOHA
- Reservation ALOHA (R-ALOHA)
- Mobile Slotted Aloha (MS-ALOHA)
- Code Division Multiple Access (CDMA)
- Orthogonal Frequency Division Multiple Access (OFDMA)
- Orthogonal Frequency Division Multiplexing (OFDM)
## Duplexing Methods
### Full Duplexing
- Time Division Duplexing (TDD)
- Frequency Division Duplexing (FDD)
- Echo Cancellation
# Notes
## Channel Based Methods
### Code Division Multiple Access
#### Direct Sequence Code Division Multiple Acces
DS-CDMA (Direct Sequence Code Division Multiple Access) is a multiple access scheme based on [[Direct Sequence Spread Spectrum|DSSS]], by spreading the signals from/to different users with different codes. 

It is the most widely used type of CDMA.
#### Frequency Hopping Code Division Multiple Access
FH-CDMA (Frequency Hopping Code Division Multiple Access) is a multiple access scheme based on [[Frequency-Hopping Spread Spectrum|FHSS]].

As an example, the Bluetooth communication system is based on a combination of Frequency Hopping and either CSMA/CA Statistical Time Division Multiplexing communication (for data communication applications) or TDMA (for audio transmission).

All nodes belonging to the same user (to the same piconet) use the same frequency hopping sequence synchronously, meaning that they send on the same frequency channel, but CDMA/CA or TDMA is used to avoid collisions within the VPAN (Virtual Personal Area Network).

Frequency-hopping is used by Bluetooth to reduce the cross-talk and collision probability between nodes in different VPANs.
#### Multi Carrier Code Division Multiple Access
#### Wideband Code Division Multiple Access
#### Time Division Code Division Multiple Access
#### Time Division Synchronous Code Division Multiple Access
### Frequency Division Multiple Access
FDMA (Frequency Division Multiple Access) methods are based on [[Frequency Division Multiplexing]] (FDM).

A related method is Wavelength Division Multiple Access (WDMA), which is based on [[Wavelength Division Multiplexing]] (WDM).
#### Based on Frequency Division Multiplexing
##### Orthogonal Frequency Division Multiple Access
##### Single Carrier Frequency Division Multiple Access
Single Carrier FDMA (SC-FDMA) is also known as Linearly Precoded OFDMA (LP-OFDMA).

It is based on Single Carrier Frequency Domain Equalization (SC-FDE). 
#### Based on Wavelength Division Multiplexing
##### Wavelength Division Multiple Access
### Time Division Multiple Access
It is based on [[Time Division Multiplexing]] (TDM).
#### Multi Frequency Time Division Multiple Access
It combines TDMA and FDMA, like in GSM.

In GSM, the frequency channel is divided into eight time slots, of which seven are used for seven phone calls, and one for signaling data.
#### Self-organized Time Division Multiple Access
#### Statistical Time Division Multiplexing Multiple Access
Statistical multiplexing is facilitated through packet mode communications.

Hence this covered under Packet Mode methods. 
#### Dynamic Time Division Multiple Access (Dynamic TDMA)
### Space Division Multiple Access
Use directional antennas and power modulation to refine spatial transmission patterns.
#### High Capacity Spatial Division Multiple Access
### Power Division Multiple Access (PDMA)
Power-division multiple access (PDMA) scheme is based on using variable transmission power between users in order to share the available power on the channel.
## Packet mode methods
Packet mode channel access methods select a single network transmitter for the duration of a packet transmission. Some methods are more suited to wired communication while others are more suited to wireless.

It generally means Statistical Time Division Multiplexing methods. Packet mode communications are also facilitated by CDMA and Random Frequency Hopping OFDMA (RFH-OFDMA).

Common Statistical Time Division Multiplexing Multiple Access protocols for wired multi-drop networks include:

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
- ALOHA and slotted ALOHA **(used in ALOHAnet)**
- Reservation ALOHA (R-ALOHA)
- Mobile Slotted Aloha (MS-ALOHA)
- Code Division Multiple Access (CDMA)
- Orthogonal Frequency Division Multiple Access (OFDMA)
- Orthogonal Frequency Division Multiplexing (OFDM)
### Organized by Collision Handling
#### Collision recovery
ALOHA, Slotted ALOHA, R-ALOHA, AX.25, CSMA/CD
#### Collision avoidance
MACA, MACAW, CSMA, CSMA/CA, DCF, PCF, HCF, CSMA/CARP
#### Collision-free
Token Ring, Token bus, MS-ALOHA
## Duplexing methods

Where these methods are used for dividing forward and reverse communication channels, they are known as [[duplexing]] methods.

Some types of full-duplexing methods are:

- Time Division Duplexing (TDD)
- Frequency Division Duplexing (FDD)
- Echo Cancellation

