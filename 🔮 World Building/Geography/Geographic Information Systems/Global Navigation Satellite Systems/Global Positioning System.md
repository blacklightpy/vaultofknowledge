### Pseudorandom Noise (PRN)
C/A Coarse Acquisition
P-code (Precison Code)
M-Code (Military Code)

**Protocols**
Q. NMEA vs RTCM?
Some Telit modules have NMEA (LG79D, etc.) and others too. RTKLib supports RTCM as well as proprietary formats of some devices in their reports. So.. implementing a custom format should be possible if required data is available. I saw in NMEA 0183 (used in LG79D) wiki that GSV (visible satellites) and GSA (list of satellites and data for obtaining fix position) are available parameters. Seems similar to the stuff needed in RTCM ig. Gotta see more into what params are needed.

**Streams (as per RTKLIB)**
Serial, TCP, NTRIP, File, FTP, HTTP
**Data Formats**
RTCM2, RTCM3, SkyTraQ, Javad, NovAtel, uBlox 6T, etc.

NTRIP added RTCM3 based IRNSS support 3 years ago as per changelog

---
Ionosphere Delay is the biggest delay, after Selective Availability (SA), which is intentional.
**Ionosphere Delay Model**
Calculated by Klobuchar model, derived from Bent Model
Not correcting this will result in inaccurate vertical height, no issue for 2D position since the atomic clocks of all satellites have same error.
(Similar to triangulation, size of circles doesn't affect centre, if all circles have equal error)

The 8-parameter Klobuchar model is passed in the navigation message
(along with the clock error rates)

**Carrier Wave notes**
GPS is based on CDMA (from GEOG 862 course)

Data rate of 50 bit/s
Symbol rate of 1023 Mchips/s

The history of modems is the attempt at increasing the bit rate over a fixed bandwidth (and therefore a fixed maximum symbol rate), leading to increasing bits per symbol. For example, the V.29 specifies 4 bits per symbol, at a symbol rate of 2,400 baud, giving an effective bit rate of 9,600 bits per second. The history of spread spectrum goes in the opposite direction, leading to fewer and fewer data bits per symbol in order to spread the bandwidth.

If each chip is considered a symbol, each symbol contains far less than one bit (50 bits/s/ 1023 ksymbols/s = 0.00005 bits/symbol)

Symbols are used instead of data bits (in GPS, CDMA cell phones, Spread Spectrum) where each symbol is a chip, per data bits. Even though this has low channel spectral efficiency in (bits/s)/Hz, it has higher system spectral efficiency (bits/s)/Hz per unit area.

A chip is a pulse of Direct Sequence Spread Spectrum Code (DSSS), such as Pseudorandom Noise (PRN) used in direct-sequence code division multiple access (DS-CDMA) channel access techniques.

Spreading Factor = Chip Rate/Symbol Rate

### History of GPS
L1 Band
It was later used for military only, during war with Russia
Then came L2C Band for civilians
changed to L2 band