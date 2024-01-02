eXogenous Kalman Filter (XKF)
Non Linear Observer (NLO)

AHRS/INS + Computer - use IMUs without GNSS

SLAM

**Standard Precision**
uBlox M9 - 50 Hz, upto 105 degree C
NEO-M9L

u‑blox's 3D ADR GNSS chip, the UBX‑M8030‑Kx‑DR - GNSS + Vehicle Data
3D ADR - ADR + elevation

UDR (Untethered Dead Reckoning)
ADR (Automotive Dead Reckoning) - UDR + Wheel Tick sensor
**High Precision**
ZED-F9K - decimeter postition, RTK, 30 Hz

ZED F9K - GNSS + IMU (Dead Reckoning) - Automotive Grade
ZED F9R - GNSS + IMU - Professional Grade
ZED F9P - GNSS (RTK only) - Standard Grade

_Radio Technical Commission for Maritime Services_ (RTCM) - DGNSS
RTK uses RTCM protocol mostly - proprietary also exist
NTRIP stands for network transport of _RTCM_ via internet protocol
Emlid NTRIP Caster for RTK

Survey of India launches CORS network (2020)

- Passive GNSS Antenna - add LNA (Low Noise Amplifier)
- High RF Interference - add SAW Filter
- SAW Filter in GPS - SMD that filters only a specific band (e.g. L1), filtering may weaken signal sometimes
[SAW Filter notes](https://www.data-alliance.net/blog/saw-filters-for-gps-antennas-surface-acoustic-wave/)

Consant poor GNSS - limited dead reckoning
limited poor GNSS - ok