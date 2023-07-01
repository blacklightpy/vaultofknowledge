A motor is a device that can be used to generate motion.

Electric Motors work on the concept that accelerated charges produce a change in electric field and a magnetic field.

## Basic Concepts
- Right hand thumb rule: From Ampere's Circuital law
- Lorentz Force: F = q.vxB (Fleming's LHR and RHR is used because in LHR, I moves along the external charge velocity v; whereas RHR is used in generators, so no external charge)
- Stacked coils add up fields, making a magnet which you can see intuitively.

## 3-Phase Power
In three phase AC, a rotating magnetic field is generated, but with a constant power. Each phase is seperated by 120 degrees.

> Power = V x I x Power Factor x sqrt(3) (Why?)
## Induction Motors
Uses 3-phase power winding to generate a rotating magnetic field. This magnetic field generates an emf on a coil places within the winding, which generates a force on itself (Lorentz force), and it rotates along with the magnetic field. Therefore, it is known as induction motors.

Generally, a squirrel cage like rotor is used instead of a coil. Also, an insulated iron core lamina is used to minimize power losses in induction.

N_stator is perpendicular to frequency of input AC power.
So speed control is possible by adjusting the frequency of input power.
N_rotor < N_stator (because stator is always catching up to the rotor, but it slows down when it is equal)
N_stator - N_rotor is called slip. Slip value is measured in percentage too.

Advantages:
- Is self starting
- No permanent magnets
- No brushes
- No commutator rings
- No position sensors
- Simple and Rugged design
- Can also be used as a generator when is rotated by another mover.

### Slip Ring Induction Motors
Squirrel Cage induction motors have low torque at starting due to phase difference by the phenomenon of inductance. 

Slip ring motors avoid this by providing a high resistance at the starting using a slip ring connected to an external resistor and the resistance is decreased at higher RPMs, which allows the induced EMF to be in phase with the input power, providing maximum torque.

## BLDC Winding
Simple (3 Teeth, 2 Pole): The ESC switches power to two of the coils, providing a three-phase current.
Multiples of 3N2P are possible, or with more teeth, some teeth can be skipped. e.g. LRK, dLRK (more info in Resource 1 below)


Other Motors: Stepper Motors, BLDC, Brushed Motors
Other Induction Motors: Slip Ring Induction Motor

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
- Commutator, Stator, Rotor
- Ball Bearings, Armature (Housing, teeth, Coils), Permanent Magnets (Poles), 
- Commutator: Brush (AC/DC), Brushless Commutation (BLDC)
- Rotor: Shaft (Inrunner), Outrunner
- BLDC: Hall Effect sensor