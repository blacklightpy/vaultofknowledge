Quantum Numbers describe the conserved quantities in a quantum mechanical system.

More technically, quantum numbers are eigenvalues of operators that commute with the [[Hamiltonian]] of a system. The Hamiltonian is an operation which when applied to a system gives the total energy of that system. 
So quantum numbers correspond to quantities that can be known exactly at the same time as the system's 
energy and their corresponding eigenstates. Together, the set of all quantum numbers of a system characterize the basis state of a system, and in principle can be measured together. [What are eigenstates and eigenvalues? It's part of vector fields and linear algebra]

Most quantum numbers are additive, but some like parity are multiplicative.
## For Electrons In Atomic Orbitals
- Principal Quantum Number, $n$ (Shell)
	- Can give the energy level of an electron. It also describes the n-th eigenvalue of the Hamiltonian, that is, the energy excluding the term with the angular momentum $J^2$. So this number only depends on $r$, the distance from the center, and it increases with it. Hence, electrons are said to be in different shells based on $n$.
- Azimuthal Quantum Number, $l$ (Subshell)
	- Can give the orbital angular momentum ($L$) through the relation $L^2=\hslash^2 l(l+1)$. Values range from $0$ to $n-1$.
	- The orbitals with $l = 0,1,2,3$ are named s-orbital, p-orbital, d-orbital and f-orbital respectively.
	- It also describes the shape of the orbital.
- Magnetic Quantum Number, $m_l$ (Orbital Orientation)
	- Can specify the orbital cloud, or the projection of the orbital angular momentum along an axis ($L_z$), conventionally the z-axis. Values range from $-l$ to $+l$. It also describes the specific orbital cloud within the orbital.
- Magnetic Spin Quantum Number ($m_s$) (Electron Spin)
	- Can specify the spin angular momentum ($S$) of the electron within an orbital. Values range from $-s$ to $s$, where $s$ is the spin of the particle. For electrons, $s=\frac{1}{2}$, and hence $m_s=\pm\frac{1}{2}$.
	- It also gives the projection of the spin angular momentum along the specified axis ($S_z = m_s\hslash$).
## For Total Angular Momentum
When one takes the spin-orbital interactions into consideration, the $L$ and $S$ operators no longer commute with the [[Hamiltonian]], and their eigenvalues change over time. Hence new quantum numbers should be used. With spin orbital interactions, the total angular momentum $J$ shifts back and forth between $L$ and $S$, while still remaining conserved.
### Of a particle 
In the presence of spin-orbital interactions, particles cannot be described using the previously mentioned quantum numbers with separate angular momentum and spin angular momentum components. These new quantum numbers should hence be used to represent the same states.

For example, to represent all the quantum states of the electrons for which $n=2$.

- Total Angular Momentum ($j$): $j=|l \pm m_s|$  
- Projection of Total Angular Momentum along a specified axis
	- $m_j$ ranges from $-j$ to $+j$
	- Like the above, $m_j=m_l+m_s$ and $|m_l+m_s| \leq j$ 
- Parity: It is +1 for states coming from even $l$ and -1 for states coming from odd $l$
### Nuclear Angular Momentum
- The nucleons have a total angular momentum due to the angular momenta of the individual nucleons, and are denoted by $I$.

## In Fundamental Particles
