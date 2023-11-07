- OsmocommBB is a free and open source GSM baseband firmware project. It is recognized by Replicant, but it only supports the OpenMoko GTA01 and GTA02 phones as of now. It also has support for SIMCom SIM800 module.
- Pinephone Modem SDK - The modem is not entirely free, but the userspace firmware is free, and the modem is isolated with the non-free components on the flash. 

# Terms
- RAT - Radio Access Technology
  - Includes Wi-Fi, Bluetooth, GSM, GPRS, LTE (E-UTRA), 5G NR, etc.
- Channel access method / Multiple access method -  It refers to the technology used to connect two device terminals for communication
  - A channel access method might also be a part of the multiple access protocol and control mechanism, also known as Medium Access Control (MAC)
    - In IEEE 802 LAN/MAN standards, MAC, along with the Logical Link Control (LLC) makes up the data link layer.
    - The LLC forms the top part of the data link layer, while MAC deals with the abstraction of the physical layer.
    - The physical layer, or PHY is connected to the data link layer using a Media-independent Interface (MII)
      - The MII was originally defined as a standard interface to connect the Fast Ethernet MAC to a PHY chip.
      - It is standardized by IEEE 802.3u
  - A channel access method is based on multiplexing, to allow multiple data streams to share the same channel.
  - The five categories of multiple access methods are: FDMA, TDMA, CDMA, SDMA, and Random access (according to Daniel Minoli, in Satellite Systems Engineering in an IPv6 Environment, from page 136-)
    - FDMA - Frequency Division Multiple Access
    - TDMA - Time Division Multiple Access
    - CDMA - Code Division Multiple Access, a scheme based on spread spectrum techniques (DSSS, FHSS, etc.)
    - SDMA - Space Division Multiple Access
    - Random Access
  - There are also Power Division Multiple Access (PDMA), Pulse Address Multiple Access (PAMA), etc. which are niche methods different from these.
  - Demand Assigned Multiple Access (DAMA) and Permanently Assigned Multiple Access (PAMA) are not multiple access methods (like CDMA, TDMA, FDMA, etc.), they are channel resource allocation methods.
  - In addition to channel mode, there are also packet mode channel access methods
  - Example of multiple access methods include CSMA/CA, CDMA, OFDM/OFDMA, etc.
# Technologies
## 0G
- PTT - Push to Talk / Manual (0G)
- MTS - Mobile Telephone Service (0G)
- IMTS - Improved Mobile Telephone Service (0G)
- RCC - Radio Common Carrier (0G)
- AMTS - Advanced Mobile Telephone System (0G)
## 1G
- D-AMTS - Digital Advanced Mobile Telephone System (1.5G)
  - IS-54 - Interim Standard 54
  - IS-136 - Interim Standard 136
  - Note: Interim Standards are published by the Telecommunications Industry Association (TIA) and Electronic Industries Alliance (EIA), and are fully named TIA/EIA/IS standards.
## 2G
- GSM - Global System for Mobile communications, by ETSI (2G)
- cdmaOne - Code Division Multiple Access One (2G)
  - Also known as IS-95 (Interim Standard 95)
  - It is the first technology that made use of the CDMA access method
- ETSI - European Telecommunications Standards Institute
- GPRS - General Packet Radio Service (2.5G)
- EDGE - Enhanced Data rates for GSM Evolution / Enhanced Data Rates for Global Evolution (2.75G)
  - Also known as EGPRS (Evolved General Packet Radio Service) and IMT-SC (International Mobile Telecommunications - Single Carrier)
- CDMA2000 1X - Code Division Multiple Access 2000 (2.9G/3G)
  - CDMA2000 is also known as C2K or IMT-MC (IMT Multi-Carrier)
  - CDMA2000 1X is also known as 1x or 1xRTT (1x Radio Transmission Technology) or IS-2000 (Interim Standard 2000)
    - 1xRTT means the same radio frequency bandwidth as the older Interim Standard 95 (IS-95)
- CDMA2000 1X Advanced - Code Division Multiple Access 2000 1X Advanced (2.9G/3G)
## 3G
They are the protocols that meet the IMT-2000 (International Mobile Telecommunications 2000) specifications set by the ITU under the ITU-R department.

- UMTS - Universal Mobile Telecommunications System (3G)
- CDMA2000 1X EV-DO Release 0 - CDMA2000 1X Evolution Data Optimized (3G)
  - CDMA2000 1X EV-DO may also be just called EV-DO or EV
  - The EV-DO family is standardized as IS-856
- HSPA - High Speed Packet Access (3.5G/3G+) (HSDPA/HSUPA - HS-Downlink/Uplink-PA)
- HSPA+ - Evolved High Speed Packet Access (3.75G)
- LTE - Long Term Evolution (3.9G/3.95G/4G)
  - Time Division Duplexing (TDD) and Frequency Division Duplexing (FDD) are the two data transmission technologies used in LTE (LTE-TDD and LTE-FDD).
    - LTE-TDD is also referred to as TD-LTE for familiarity with TD-SCDMA
- EV-DO Revision A (3.9G/3.95G/4G)
- EV-DO Revision B (3.9G/3.95G/4G)
- EV-DO Revision C (3.9G/3.95G/4G)
- WiMAX - Worldwide Interoperability for Microwave Access, by IEEE (3.9G/3.95G/4G)
  - It is standardized under IEEE 802.16 set of wireless broadband standards
  - IEEE 802.16 is named WirelessMAN by the IEEE, and is commercialized as WiMAX
  - Mobile WiMAX - Mobile Worldwide Interoperability for Microwave Access
  - WiBro - South Korean name for Mobile WiMAX, but it evolved to higher speeds
## 4G
They are the protocols that meet the IMT Advanced (International Mobile Telecommunications Advanced) specifications set by the ITU under the ITU-R department. But in Turkey, these, including LTE Advanced were called 4.5G. Because of market pressures, and the improvements the technologies brought over 3G, WiMAX, HSPA+ and 

- LTE Advanced (4.5G)
  - The access method is known as E-UTRA (Evolved UMTS Terrestrial Radio Access / Evolved Universal Terrestrial Radio Access)
- LTE Advanced Pro - Long Term Evolution Advanced Pro (4.5G Pro/pre-5G/5G E/4.9G)
- WiMAX Release 2 (IEEE 802.16m)
  - It is also known as WirelessMAN-Advanced, and was aimed at fulfilling the ITU-R IMT-Advanced criteria for 4G systems.
  - WiMAX Release 2.1 / WiMAX Release 2+ is interoperable with LTE-TDD because the bands overlap
## 5G
- 5G NR - 5G New Radio (5G)
- WiMAX Release 3 - Worldwide Interoperability for Microwave Access Release 3, interoperable with 5G NR (5G)
- 5G Advanced (5.5G)
- NB-IoT - Narrow Band IoT (5.5G)
- LTE-M - Long Term Evolution - Machine communication (5.5G)
  - Also known as LTE-MTC (Long Term Evolution Machine Type Communication)
## 6G
Millimeter waves (30-300 GHz, and according to some speculations, terahertz radiations (300-3000 GHz) may also be used in 6G)
