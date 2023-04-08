A motor is a device that can be used to generate motion.

Electric Motors work on the concept that accelerated charges produce a change in electric field and a magnetic field.

## Basic Concepts
- Right hand thumb rule: From Ampere's Circuital law
- Lorentz Force: F = q.vxB (Fleming's LHR and RHR is used because in LHR, I moves along the external charge velocity v; whereas RHR is used in generators, so no external charge)
- Stacked coils add up fields, making a magnet which you can see intuitively.


## 3-Phase Power
In three phase AC, a rotating magnetic field is generated, but with a constant power. Each phase is seperated by 120 degrees.

> Power = V x I x Power Factor x sqrt(3) (Why?)


## BLDC Winding
Simple (3 Teeth, 2 Pole): The ESC switches power to two of the coils, providing a three-phase current.
Multiples of 3N2P are possible, or with more teeth, some teeth can be skipped. e.g. LRK, dLRK (more info in Resource 1 below)


# Types of Windings
- Delta
- Star
- Wye
Mode of winding: Concentrated (single coil per tooth), Distributed (mixed up motors)
## Resources:
- 1. Homebuilt Electric Motors (stylized site): bavaria-direct.co.za
- 2. BLDC Simulator: simulators.drbasheers.com/UCI/x497.6/motor/open_loop_no_pwm.html
- 3. Encyclopedia Magnetica (Nice Wiki)

# Parts of a generic motor
Ball Bearings, Teeth, Stator Housting (Contains teeth, etc.), Permanent Magnets (Poles), Coils
Commutator: Brush (AC/DC), Brushless Commutation (BLDC)
Rotor: Shaft (Inrunner), Outrunner
BLDC: Hall Effect sensor