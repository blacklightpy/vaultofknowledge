# Final Theory
- Battery has an electric field around it, due to its charge concentration at the electrodes.
- One side is a sink, and the other side is a source. This like is a powerful dipole, except that it is willing to accept charges on one side and expel them on the other side, keeping the net intake 0, as it discharges the stored electrochemical potential energy.
- When connected to a conducting wire (that is, something with a dielectric constant of 1 or close), it acts as an ideal [[Waveguide]], through which the field passes, and the battery supplies electrons to continue this flow.
- But as the field flows, if it reaches an open circuit, and it can't jump the gap, the electrons won't move further, and will begin to push back.
- In that case, the field flows back and cancels, returning to the initial state
- But if that's not the case, the circuit keeps supplying electrons, and the required energy due to wire resistance is sent back to the battery after the fields flowing from both sides meet and reflect back
- This will generate a more appropriate current in the next cycle, and in a few cycles, the right amount of current, or "steady state DC current" is obtained in the circuit
- If the circuit was AC, the field always keeps changing, and there's the skin effect as well.

- Electrons flow, but it's the field flows by the electrons that carry the energy.
- More precisely, it's the fields that carry energy, and electrons are just field sink points which are present in a material, so obviously they are affected by the force of strong fields from the battery at close proximity, and gain a drift velocity.
- The Poynting Vector can describe the energy flow direction as a shortcut due to the rising electric and magnetic fields (which arise due to the motion of electrons), and this points in the direction of the resistances in the circuit, and outwards from the battery.
- This means current flows to each point in the circuit.
- In AC too, though electric field flips, the magnetic field does too, and hence the direction of flow of energy remains the same.
- Since the load continuously uses up the energy passed by the fields, that is why current keeps flowing, because the load is an energy sink.

>[!NOTE]
> For machines, it can be understood as flowing through the machine circuit or PCB traces, but in case of living beings, they use the energy in strange patterns, as if they are electric field benders.
> 
> Wait! I forgot humans die if current is passed to them LMAO. I guess I was thinking about the natural cycle of food and sunlight, which is still electromagnetic field flow, and thus energy, but unlike a circuit, energy is obtained as it is needed, in a specific manner.

- The main experiment Derek used to show this theory was a classic case of a transmission line, which is modeled using a "lumped element method", and the equations used in it are called the [[Telegrapher's equations]].
---
# References
> Literally ~5 hrs 40 min of videos on this small, yet intricate topic.

- Veritasium (2 videos)
- AlphaPhoenix (4 videos on main, 1 video on second, 4 videos extra)
- ElectroBOOM (3 videos)
- EEVblog (1 video)
- The Science Asylum (1 video)
# Key Points
> AlphaPhoenix:
- Energy is transmitted by the electric field that flows around the wires, not by the flow of electrons
- The wire acts as a [[Waveguide]].

> AlphaPhoenix:
- Ohm's law is a good approximation, and comes into effect after the circuit has solved the potential path.
- The circuit needs multiple cycles before the full power is negotiated, and the circuit enters the steady state.
- Electrons are not particles, but for most use cases, it's easier to think of them as particles.

> ElectroBOOM:
- The current flow can be modeled using infinite capacitors and infinite inductors along the wire.
	- This is called a lumped element model
- Because of this, the burst of current gets flattened out as it moves along the wire, because of the inductances pushing back and the capacitors sucking out the charges.
- But if you consider that the bulb turns on at any current, there is always the leakage current from the battery jumping the gap, even when the circuit is closed, so the bulb will always be on.

> Veritasium:
- The Poynting vector shows the direction of flow of power according to Maxwell's laws
	- $\large \vec S = \dfrac{1}{\mu_0} \vec E \times \vec B = \vec E \times \vec H$
	- Should one use $\large \vec B$ or $\large \vec H$? It seems like one can choose it as they wish, because some times, $\large \vec E$ is more comparable to $\large \vec B$ and at other times with $\large \vec H$.
	- Remember, $\large \vec B$ or $\large \vec H$ don't contain $\large \mu_0$, but $\large \vec E$ does contain $\large \epsilon_0$. So that value stays outside whether you use $\large \vec B$ or $\large \vec H$.
	- According to Ecosia Chat (powered by ChatGPT), $\large \vec B$ is used best when a magnetic material is involved and $\large \vec H$ is used best when a magnetic circuit is involved.

> EEVblog:
- In AC, the Poynting vector points outwards, but it spreads out in all directions and much of the energy also radiates away, and this gets more with higher frequency.
	- Inductors and Capacitors only matter later on for transient / AC cases.
- In DC, the Poynting vector actually points inwards, considering a circuit with uniform resistance.
	- In DC, once the circuit is negotiated, energy has to flow through the full path, and not through the shortcut path.
	- This is called the DC steady state.
	- In DC, there is no skin effect, which is the AC tendency to have higher current density at the surface, so the Poynting vector goes all the way to the center.
		- The thickness of the skin effect, or skin depth is proportional to the frequency of the current.
	- So in DC, power can be said as flowing through the wire.

> The Science Asylum:
- The Poynting Vector points outside the battery, and inwards to the circuit wire.

> EEVblog:
- In engineering, we have
	- Transmission Line Analysis (first part)
	- Transient analysis (for AC)
	- Steady State analysis (for DC)

> AlphaPhoenix:
- Free electrons in a conductor will move at the [[Fermi velocity]] in random directions. The net velocity will be 0.
- When a potential is applied, they will move about at a drift velocity towards one direction.
	- $v_d=\mu E$
	- Can be reformulated as $v_d = J/ne = I/nAe$, where $n$ is the charge carrier number density ($N/V$) and $e$ is the charge of the charge carrier
	- Also as $v_d = \dfrac{m \sigma \Delta V}{\rho e f l}$, where $m$ is the molecular mass ($M/N_0$), $\sigma$ is the conductivity, $\Delta V$ is the voltage, $\rho$ is the density, $e$ is the electric charge, $f$ is the number of free electrons per atom, $l$ is the length of the conductor.
		- Math checks out :p
- For DC voltages in a copper wire of 2 mm at 1 A, $\large v_d$ is about 8 cm/hr.
- For AC voltages, there is no net drift velocity, as the electrons oscillate back and forth.
- Why this drift happens is a bit more complicated (that is, about the Fermi velocity)

> ElectroBOOM:
- Coaxial Twisted Pair cables form a differential pair, which cancels out inductances along the length of the wire, and thus conserves energy.

## More points from Wikipedia
- The magnetic component is considered to be in phase with the current, and the electric component is considered to be in phase with the voltage.
- As a note, the fields do not move through space, it is just the electromagnetic energy that moves, which increases and decreases the field intensity in the space.

- Drift velocity is analogous to wind, the electromagnetic field flow is analogous to the speed of sound through gases, and random flow is analogous to heat.

## Other doubts
- Drift Velocity in superconductors
	- I assumed it would be infinite, but limited by relativistic effects and external fields somehow..
	- Superconductors are used in thick bundles because a superconducting material loses its property after a bunch of electrons, so more area is used to pack in a higher current density. In other words, superconductors have a maximum current density.
		- Related: Cooper pairs are a way of looking at charges in the superconducting phase. But having less cooper pairs in an amount of material, and electrons getting depleted if you try to pass more current isn't the reason for losing superconductivity at high current draw.
	- The speed limit is the Landau critical velocity / Fermi velocity.
		- In type II ceramic superconductors like YBCO it's about 250 km/s. 
	- Values to know
		- Current Density?
		- Critical Velocity?
	- Anyways, the order of speed is said to be very low normally (contradicts with what I said earlier about YBCO's Fermi velocity.. have to verify)
# More topics to cover
- Thermodynamic Potential
	- e.g. Internal Energy, Helmholtz Free Energy, Enthalpy, Gibbs Energy
- Chemical Potential (aka partial molar Gibbs free energy), ==from Thermodynamics==
- Electrochemical Potential (Energy/mole)
	- aka Fermi Level, in ==semiconductor physics== and ==solid state physics==
	- Not to be confused with Electrode Potential (Voltage, or Energy/charge)
- Fermi Energy, in ==quantum mechanics==
	- relating to [[Fermions]]
	- Related quantities
		- [[Fermi velocity]]
		- Fermi temperature
		- Fermi momentum
- Band theory and Fermi-Dirac distribution, in ==semiconductor physics== and ==quantum mechanics==
- Electron Mobility, in ==solid state physics==
	- How quickly an electron can move through a conductor when pulled by an electric field
	- $\mu=E/v_d$ (from $v_d=\mu E$)
	- Relation to conductivity
		- $J=J_e+J_h=(en\mu_e+ep\mu_h)E$ (find this relation and derivation of drift velocity on Wikipedia)
		- $J=\sigma E$ (By Ohm's Law)
		- $\sigma=en\mu_e+ep\mu_h$
		- $\sigma=e(n\mu_e+p\mu_e)$
	- Related quantities:
		- Hole mobility: For holes
		- Carrier Mobility: For both holes and electrons

- The flow of electromagnetic waves when they interact with the materials around the cable and the presence of electric charge carriers and magnetic dipoles are usually described using "mean field theory" by the [[Permeability]] and [[Permittivity]] of the materials involved.
- Mean Field Theory, in ==physics== and ==probability theory==
- Perturbation theory, in ==applied mathematics== and ==quantum mechanics==
	- For approximate solutions, starting from an exact solution of a related, but simpler problem
## Random Topics
- Lattice Model, in ==mathematical physics==
	- [[Quantum Chromodynamics|QCD]] Lattice Model, a discretization of QCD is an example of continuum theory studied by lattice models.
	- However, [[Digital Physics]] considers nature to have a limit on information density.
- [[Green's function]]
- [[Smith Chart]]