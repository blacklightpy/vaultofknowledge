# References
- Veritasium
- AlphaPhoenix
- ElectroBOOM
- EEVblog
# Key Points
- Energy is transmitted by the electric field that flows around the wires, not by the flow of electrons
- The wire acts as a [[waveguide]].

- Ohm's law is a good approximation, and comes into effect after the circuit has solved the potential path.
- The circuit needs multiple cycles before the full power is negotiated.
- Electrons are not particles, but for most use cases, it's easier to think of them as particles.

- The current flow can be modeled using infinite capacitors and infinite inductors along the wire.
- Because of this, the burst of current gets flattened out as it moves along the wire, because of the inductances pushing back and the capacitors sucking out the charges.
- But if you consider that the bulb turns on at any current, there is always the leakage current from the battery jumping the gap, even when the circuit is closed, so the bulb will always be on.

- The Poynting vector shows the direction of flow of power according to Maxwell's laws
	- $\large \vec S = \dfrac{1}{\mu_0} \vec E \times \vec B = \vec E \times \vec H$
	- Should one use $\large \vec B$ or $\large \vec H$? It seems like one can choose it as they wish, because some times, $\large \vec E$ is more comparable to $\large \vec B$ and at other times with $\large \vec H$.

- Free electrons in a conductor will move at the [[Fermi velocity]] in random directions. The net velocity will be 0.
- When a potential is applied, they will move about at a drift velocity towards one direction.
	- $v_d=\mu E$
	- Can be reformulated as $v_d = J/ne = I/nAe$, where $n$ is the charge carrier number density ($N/V$) and $e$ is the charge of the charge carrier
	- Also as $v_d = \dfrac{m \sigma \Delta V}{\rho e f l}$, where $m$ is the molecular mass ($M/N_0$), $\sigma$ is the conductivity, $\Delta V$ is the voltage, $\rho$ is the density, $e$ is the electric charge, $f$ is the number of free electrons, $l$ is the length of the conductor.
		- Math checks out :p
- For DV voltages in a copper wire of 2mm at 1 A, $\large v_d$ is about 8 cm/hr.
- For AC voltages, there is no net drift velocity, as the electrons oscillate back and forth.

- Why this drift happens is a bit more complicated (that is, about the Fermi velocity)

## More points from Wikipedia
- The magnetic component is considered to be in phase with the current, and the electric component is considered to be in phase with the voltage.
- As a note, the fields do not move through space, it is just the electromagnetic energy that moves, which increases and decreases the field intensity in the space.
# More topics to cover
- Thermodynamic Potential
	- e.g. Internal Energy, Helmholtz Free Energy, Enthalpy, Gibbs Energy
- Chemical Potential (aka partial molar Gibbs free energy), ==from Thermodynamics==
- Electrochemical Potential (Energy/mole)
	- aka Fermi Level, in ==semiconductor physics== and ==solid state physics==
	- Not to be confused with Electrode Potential (Voltage, or Energy/charge)
- Fermi Energy, in ==quantum mechanics==
	- relating to [[fermions]]
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

- The flow of electromagnetic waves when they interact with the materials around the cable and the presence of electric charge carriers and magnetic dipoles are usually described using "mean field theory" by the [[permeability]] and [[permittivity]] of the materials involved.
- Mean Field Theory, in ==physics== and ==probability theory==
- Perturbation theory, in ==applied mathematics== and ==quantum mechanics==
	- For approximate solutions, starting from an exact solution of a related, but simpler problem
## Random Topics
- Lattice Model, in ==mathematical physics==
	- [[Quantum Chromodynamics|QCD]] Lattice Model, a discretization of QCD is an example of continuum theory studied by lattice models.
	- However, [[digital physics]] considers nature to have a limit on information density.
- [[Green's function]]
- [[Smith Chart]]