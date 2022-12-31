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
		- Strategic Phase - We identify BCs and place them in a context map
		- Tactical Phase - We model each BC according to the business rules of the subdomain