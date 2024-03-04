Multiple access schemes are based on [[multiplexing]].
## Channel Based Methods
- Code Division Multiple Access (CDMA)
	- DS-CDMA
- Frequency Division Multiple Access (FDMA)
	- Orthogonal Frequency Division Multiple Access (OFDMA)
	- Single Carrier Frequency Division Multiple Access (SC-FDMA) / Linearly Pre-coded OFDMA (LP-OFDMA)
- Wavelength Division Multiple Access (WDMA)
- Time Division Multiple Access (TDMA)
	- Multi Frequency Time Division Multiple Access (MF-TDMA)
	- Self-organized Time Division Multiple Access (STDMA)
	- Statistical Time Division Multiplexing Multiple Access (STDM-MA)
		- Carrier Sense Multiple Access (CSMA)
			- Carrier Sense Multiple Access with Collision Detection (CSMA/CD) 
			- Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA)
	- Dynamic Time Division Multiple Access (Dynamic TDMA)
- Space Division Multiple Access (SDMA)
## Packet Mode Methods
### General (Statistical Time Division Multiple Access Methods)
- Carrier Sense Multiple Access with Collision Detection (CSMA/CD)
- Multiple Access with Collision Avoidance (MACA)
- Multiple Access with Collision Avoidance for Wireless (MACAW)
- Carrier Sense Multiple Access (CSMA)
- Carrier Sense Multiple Access with Collision Avoidance and Resolution using Priorities (CSMA/CARP)
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


- Frequency Hopping Code Division Multiple Access (FH-CDMA)
	- It is based on [[Frequency-Hopping Spread Spectrum]].
	- As an example, the Bluetooth communication system is based on a combination of frequency-hopping and either CSMA/CA statistical time-division multiplexing communication (for data communication applications) or TDMA (for audio transmission)
	- All nodes belonging to the same user (to the same piconet) use the same frequency hopping sequence synchronously, meaning that they send on the same frequency channel, but CDMA/CA or TDMA is used to avoid collisions within the VPAN.
	- Frequency-hopping is used by Bluetooth to reduce the cross-talk and collision probability between nodes in different VPANs.
- Multi Carrier Code Division Multiple Access (MC-CDMA).
- Space Division Multiple Access (SDMA)
	- Use directional antennas and power modulation to refine spatial transmission patterns.
- Power Division Multiple Access (PDMA)
	- Power-division multiple access (PDMA) scheme is based on using variable transmission power between users in order to share the available power on the channel.
## Packet mode methods

Packet mode channel access methods select a single network transmitter for the duration of a packet transmission. Some methods are more suited to wired communication while others are more suited to wireless.

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

## Duplexing methods

Where these methods are used for dividing forward and reverse communication channels, they are known as [[duplexing]] methods.

Some types of full-duplexing methods are:

- Time Division Duplexing (TDD)
- Frequency Division Duplexing (FDD)
- Echo Cancellation


|   |   |
|---|---|
|[Channel-based](https://en.wikipedia.org/wiki/Circuit_switching "Circuit switching")|\|   \|   \|<br>\|---\|---\|<br>\|[FDMA](https://en.wikipedia.org/wiki/Frequency-division_multiple_access "Frequency-division multiple access")\|- [FDM](https://en.wikipedia.org/wiki/Frequency-division_multiplexing "Frequency-division multiplexing")<br>    - [OFDMA](https://en.wikipedia.org/wiki/Orthogonal_frequency-division_multiple_access "Orthogonal frequency-division multiple access")<br>    - [SC-FDMA](https://en.wikipedia.org/wiki/Single-carrier_FDMA "Single-carrier FDMA")<br>- [WDM](https://en.wikipedia.org/wiki/Wavelength-division_multiplexing "Wavelength-division multiplexing")<br>    - [WDMA](https://en.wikipedia.org/wiki/Wavelength-division_multiple_access "Wavelength-division multiple access")\|<br>\|[TDMA](https://en.wikipedia.org/wiki/Time-division_multiple_access "Time-division multiple access")\|- [MF-TDMA](https://en.wikipedia.org/wiki/Multi-frequency_time-division_multiple_access "Multi-frequency time-division multiple access")<br>- [STDMA](https://en.wikipedia.org/wiki/Self-organized_time-division_multiple_access "Self-organized time-division multiple access")\|<br>\|[CDMA](https://en.wikipedia.org/wiki/Code-division_multiple_access)\|- [W-CDMA](https://en.wikipedia.org/wiki/W-CDMA "W-CDMA")<br>- [TD-CDMA](https://en.wikipedia.org/wiki/TD-CDMA "TD-CDMA")<br>- [TD-SCDMA](https://en.wikipedia.org/wiki/TD-SCDMA "TD-SCDMA")<br>- [DS-CDMA](https://en.wikipedia.org/wiki/Direct-sequence_spread_spectrum "Direct-sequence spread spectrum")<br>- [FH-CDMA](https://en.wikipedia.org/wiki/Frequency-hopping_spread_spectrum "Frequency-hopping spread spectrum")<br>- [MC-CDMA](https://en.wikipedia.org/wiki/Multi-carrier_code-division_multiple_access "Multi-carrier code-division multiple access")\|<br>\|[SDMA](https://en.wikipedia.org/wiki/Space-division_multiple_access "Space-division multiple access")\|- [HC-SDMA](https://en.wikipedia.org/wiki/IBurst "IBurst")\|<br>\|[PDMA](https://en.wikipedia.org/wiki/Polarization-division_multiple_access "Polarization-division multiple access")\|<br>\|[PAMA](https://en.wikipedia.org/wiki/Pulse-address_multiple_access "Pulse-address multiple access")\||
|[Packet-based](https://en.wikipedia.org/wiki/Packet_switching "Packet switching")|\|   \|   \|<br>\|---\|---\|<br>\|[Collision recovery](https://en.wikipedia.org/wiki/Contention_(telecommunications) "Contention (telecommunications)")\|- [ALOHA](https://en.wikipedia.org/wiki/ALOHAnet#The_ALOHA_protocol "ALOHAnet")<br>- [Slotted ALOHA](https://en.wikipedia.org/wiki/ALOHAnet "ALOHAnet")<br>- [R-ALOHA](https://en.wikipedia.org/wiki/Reservation_ALOHA "Reservation ALOHA")<br>- [AX.25](https://en.wikipedia.org/wiki/AX.25 "AX.25")<br>- [CSMA/CD](https://en.wikipedia.org/wiki/Carrier-sense_multiple_access_with_collision_detection "Carrier-sense multiple access with collision detection")\|<br>\|[Collision avoidance](https://en.wikipedia.org/wiki/Contention_(telecommunications) "Contention (telecommunications)")\|- [MACA](https://en.wikipedia.org/wiki/Multiple_Access_with_Collision_Avoidance "Multiple Access with Collision Avoidance")<br>- [MACAW](https://en.wikipedia.org/wiki/Multiple_Access_with_Collision_Avoidance_for_Wireless "Multiple Access with Collision Avoidance for Wireless")<br>- [CSMA](https://en.wikipedia.org/wiki/Carrier-sense_multiple_access "Carrier-sense multiple access")<br>- [CSMA/CA](https://en.wikipedia.org/wiki/Carrier-sense_multiple_access_with_collision_avoidance "Carrier-sense multiple access with collision avoidance")<br>- [DCF](https://en.wikipedia.org/wiki/Distributed_coordination_function "Distributed coordination function")<br>- [PCF](https://en.wikipedia.org/wiki/Point_coordination_function "Point coordination function")<br>- [HCF](https://en.wikipedia.org/wiki/IEEE_802.11e-2005#802.11e_MAC_protocol_operation "IEEE 802.11e-2005")<br>- [CSMA/CARP](https://en.wikipedia.org/wiki/CSMA/CARP "CSMA/CARP")\|<br>\|[Collision-free](https://en.wikipedia.org/wiki/Collision_domain "Collision domain")\|- [Token Ring](https://en.wikipedia.org/wiki/Token_Ring "Token Ring")<br>- [Token bus](https://en.wikipedia.org/wiki/Token_bus_network "Token bus network")<br>- [MS-ALOHA](https://en.wikipedia.org/wiki/Mobile_Slotted_Aloha "Mobile Slotted Aloha")\|<br>\|Delay and disruption tolerant\|- [MANET](https://en.wikipedia.org/wiki/Mobile_ad_hoc_network "Mobile ad hoc network")<br>- [VANET](https://en.wikipedia.org/wiki/Vehicular_ad-hoc_network "Vehicular ad-hoc network")<br>- [DTN](https://en.wikipedia.org/wiki/Delay-tolerant_networking "Delay-tolerant networking")<br>- [Dynamic Source Routing](https://en.wikipedia.org/wiki/Dynamic_Source_Routing "Dynamic Source Routing")\||
|[Duplexing methods](https://en.wikipedia.org/wiki/Duplex_(telecommunications) "Duplex (telecommunications)")|- [TDD](https://en.wikipedia.org/wiki/Duplex_(telecommunications)#Time-division_duplexing "Duplex (telecommunications)")<br>- [FDD](https://en.wikipedia.org/wiki/Duplex_(telecommunications)#Frequency-division_duplexing "Duplex (telecommunications)")|