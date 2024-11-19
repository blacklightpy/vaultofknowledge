The Effective Radiated Power (ERP) is the percieved power of an antenna along the direction of its gain. The Effective Isotropic Radiated Power (EIRP) is the same as the ERP, except that the gain is measured relative to isotropic antennas (dBi), while ERP measures gain relative to half-wave dipole antennas (dBd).

EIRP(dB) = ERP(dB) + 2.15 dB

## Law
The limits are generally known as link budget.

India allows 4W ERP (36 dBm) in 2.4GHz and in 865-868 MHz.
The tranmission power is 1W (30 dBm).

FCC allows 36 dBm EIRP for Point to Point (PtP) and 30 dB EIRP for Point to Multipoint (PtMP) connections.

In general, for every 1 dB lowered at the transmitter, the antenna gain can be increased by 3 dB.
## Measurement of ERP
ERP(dbW) = $P_{TX}$ (dBW) - $P_{loss}$ (dB) + G(dBi) - 2.15 dB

EIRP(dbW) = $P_{TX}$ (dBW) - $P_{loss}$ (dB) + G(dBi)

Note: Antenna losses are included in the gain

## How to convert dBm to Watts
Conversion formula:

dBm = 10*log10(mW) mW = 10^(dBm/10)

Typical values:

| dBm                    |                     Watts  |   |                     dBm |                     Watts  |   |                     dBm |                     Watts |
|------------------------|----------------------------|---|-------------------------|----------------------------|---|-------------------------|---------------------------|
|                     0  |                     1.0 mW |   |                     16  |                     40 mW  |   |                     32  |                     1.6 W |
|                     1  |                     1.3 mW |   |                     17  |                     50 mW  |   |                     33  |                     2.0 W |
|                     2  |                     1.6 mW |   |                     18  |                     63 mW  |   |                     34  |                     2.5 W |
|                     3  |                     2.0 mW |   |                     19  |                     79 mW  |   |                     35  |                     3.2 W |
|                     4  |                     2.5 mW |   |                     20  |                     100 mW |   |                     36  |                     4.0 W |
|                     5  |                     3.2 mW |   |                     21  |                     126 mW |   |                     37  |                     5.0 W |
|                     6  |                     4 mW   |   |                     22  |                     158 mW |   |                     38  |                     6.3 W |
|                     7  |                     5 mW   |   |                     23  |                     200 mW |   |                     39  |                     8.0 W |
|                     8  |                     6 mW   |   |                     24  |                     250 mW |   |                     40  |                     10 W  |
|                     9  |                     8 mW   |   |                     25  |                     316 mW |   |                     41  |                     13 W  |
|                     10 |                     10 mW  |   |                     26  |                     398 mW |   |                     42  |                     16 W  |
|                     11 |                     13 mW  |   |                     27  |                     500 mW |   |                     43  |                     20 W  |
|                     12 |                     16 mW  |   |                     28  |                     630 mW |   |                     44  |                     25 W  |
|                     13 |                     20 mW  |   |                     29  |                     800 mW |   |                     45  |                     32 W  |
|                     14 |                     25 mW  |   |                     30  |                     1.0 W  |   |                     46  |                     40 W  |
|                     15 |                     32 mW  |   |                     31  |                     1.3 W  |   |                     47  |                     50 W  |

# Additional Link factors
- Radiation angle (direction in degrees)
- Polarity (horizontal, vertical, circular)
- Beam width (In degrees)
- Fresnel Zone (Propagation path, an ellipsoidal region around the LoS; Important to check to decide if the channel will have a proper link)
- Link Budget = Power_TX + Gain_TX + Gain_RX + RX_Sensitivity – Path Loss
- Calculators
  - Fresnel Zone: https://www.everythingrf.com/rf-calculators/fresnel-zone-calculator
