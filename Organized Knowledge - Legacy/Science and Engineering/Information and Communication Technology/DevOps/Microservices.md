Handbook from Semaphore CI: https://wpblog.semaphoreci.com/wp-content/uploads/2022/09/Monolith_to_Microservices_Handbook-1.pdf

**Key Points**
- Chapter 2 - Heirarchical model vs Pod model
	- Traditional models have roles, but no one has responsibility over an area
	- Use flat heirarchies where people own services
	- There are development teams with broad knowledge of DevOps. There are no responsibilities like the 'security guy', 'QA guy', etc. Everyone in a pod is responsible for the pod.
	- There are also support teams for handling CI/CD, Server, Tooling, etc. and other core systems.
	- Teams of pods that depend on each other should coordinate with each other.

- Domain Driven Development
	- Analyzes important parameters in bounded contexts (BCs) (different contexts)
	- Keeps a context map that connects BCs
	- DDD Takes place in two phases
		- Strategic Phase
			- We analyze each domain and determine it's business rules to form BCs and place them in a context map
			- Each BC can be a potential microservice
		- Tactical Phase
			- We zoom into each domain to analyze the subdomains
			- We model each BC according to the business rules of the subdomains
	- DDD is iterative
		- DDD based microservices can be too complex, and have to be broken down
		- Or they can be too chatty and need to be merged
	- Complementary design patterns
		- DDD is a theory heavy model for modelling complex systems
		- When making microservices, each team can choose either BDD or TDD
		- TDD is faster for single microservices or a few services
		- BDD is easier for low-to-medium complexity designs
		- A way to use all three would be
			- Use strategic DDD to analyze the domain
			- Use tactical DDD for each microservice
			- Each team can use TDD or BDD (or both) for their pods