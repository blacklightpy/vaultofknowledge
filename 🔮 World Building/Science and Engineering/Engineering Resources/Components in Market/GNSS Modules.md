Telit, uBlox and Septentrino all have a vibe

**NavIC enabled modules**
- SkyTraq PX1125S-01 GNSS module - NavIC + GLONASS + GPS (check rtklib/[skytraq.c](https://github.com/ethz-asl/rtklibros/blob/master/src/rcv/skytraq.c))
- Quectel L89 R2.0
- Quctel L79 (A)
- Quctel L79 (C)
- Quctel L29 (B)
- Quctel L29 (C)
- Telit SL869T3-I GNSS - GPS L1, NavIC L5, GAGAN L1 Dual Frequency
- Telit SE868SY-D Dual Frequency
NOTE: Some Telit modules have GAGAN without NavIC
**NavIC enabled RTK modules**
- Quectel LG69T-AA (AA/AP/AB/AD) RTK NavIC
- Septentrino mosaic-X5 RTK NavIC
- Septentrino AsteRx4 RTK Navic
- Septentrino AsteRx-m3 Pro+ RTK Navic (Base and Rover)
- Septentrino AsteRx-m3 Pro RTK Navic (Base + Rover separate)
- NTLab [NTL104](https://ntlab.lt/product/gnss-receiver-module-ntl104/) (RTCM 3.3 outputs too, NMEA 2.3, NMEA 4.11, NTL Binary; SSR Corrections) - 850 USD according to a paper
- AllyStar TAU
	- Allystar RTK engine is performed on either GPS L1/L5 and GALILEO E1/E5a, GPS L1/L2C and BeiDou B1I/B2I, GPS L1/L2C and GLONASS L1OF/L2OF or GPS L1/L5 and BeiDou B1I/B2a signals. While GPS/Galileo is a more suitable configuration to be used outside Asia, GPS/BEIDOU provides an improved solution inside Asia, where users can more easily track BeiDou IGSO and GEO satellites.

**Generic Modules**
- Low Cost Dual Band GNSS Reciever Silicon - Broadcom 47755, ST Micro TeseoV (STA9100MGA)
- SIM7600 Modem/GNSS Module

#### NTLab concepts (overviews)
- **NTLab's open architecture for  multi-system multi-band OEM reciever module** - https://ntlab.lt/product/open-architecture/
- **NTLab's open  platform for  multi-system multi-band OEM board** - https://ntlab.lt/product/open-platform/