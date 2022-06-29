GPS (US)
Glonass (Russia)
Galileo (UK)
BeiDou (China)
NavIC (formerly IRNSS) (India)
QZSS (Japanese SBAS)
GPS/GAGAN (Indian SBAS)
[All Bands and Frequencies of all Constellations](https://www.rfwireless-world.com/Terminology/GPS-Frequency-Band-and-GNSS-Frequency-Band.html)

L1 - Military, L2C - Consumer, L5 - GPS, QZSS, E5 - Galileo, G3/B3 - Glonass/Beidou

# GNSS Augmentation Systems 
**Types**
Satellite Based (SBAS), Ground Based (GBAS), Aircraft based (ABAS)
Wide Area Augmentation System (WAAS), Local Area Augmentation System (LAAS)

- DGNSS (NTRIP)
- RTK (NTRIP Protocol, RTCM3.x or other open data formats) / OSR (Observation State Representation) - CPDGNSS
- PPP (Proprietary Data Formats) (not DGNSS, uses internet correction providers like IGS (International GNSS), unidirectional communication, slow <3-30 min, <10 cm, long range (global))
- PPP-RTK / SSR (State Space Representation) (SPARTN Data Format)- same accuracy, PPP coverage (continental), lower bandwidth than RTK, as fast as RTK, unidirectional communication); uBlox PointPerfect has SSR (cm level in <30 sec)
- Trimble RTX (similar accuracy to GAGAN (from a Paper, for Sri Lanka))

- Network RTK (NRTK)
- Wide Area RTK (WARTK) - developed by [gAGE/UPC](https://gage.upc.edu/forum/wide-area-rtk/) (Research Group of Astronomy and Geomatics/Technical University of Catalonia) (Unlike RTK, doesn't assume Ionosphere delay is same for all users, instead broadcasts the data with different algorithms ref: [Navipedia, the Offcial European GNSS WIki](https://gssc.esa.int/navipedia/index.php/WARTK_Standards))

**Wide Area DGNSS (WADGNSS)**
- GPS and Geo Augmented Navigation (GAGAN) (Indian SBAS)
- WAAS (Wide Area Augmentation System) - USA
- EGNOS - the European operational SBAS
- MSAS - the Japanese operational SBAS
- CDGPS - Canadian Differential GPS
