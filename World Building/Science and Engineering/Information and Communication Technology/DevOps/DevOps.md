# What is DevOps?
DevOps stands for Development and Operations, which refers to the combination of software development and IT operations. This originated from the practice of [Agile](Agile.md) methodologies in development teams and allows for faster development, eliminating areas of fricition.

# Areas and Characteristics
- Agile workflow
	- Simplicity and Automation are key to a strong development team
- Use of [CI/CD systems](Continuous%20Integration,%20Delivery%20and%20Deployment.md) for fast feedback loops
- Monitoring
	- Use of product-wide logging and metrics for improvement of operations
- Infrastructure as Code (IaC)
	- Use of Infrastructure as a Service (IaaS) [Platforms](Infrastructure%20as%20a%20Service.md) and configuration files
- Microservices
- Policy as Code (PaC)
- Monitoring

# Implementation
- During development, follow [Software Development Practices](Software%20Development%20Practices.md)
- Implement CI/CD
	- Originates from [XP](Extreme%20Programming.md)
	- Work in small batches and units. Not the fastest for large features, but it ensures testing well.

# Tips
**Development Practices**
- Reorganize the teams to be cross-functional, removing silos and flattening heirarchies to allow for innovation.
- Foster a DevOps work culture, where lines between developer and operation jobs are blurred.
- Get acquainted with [Software Development Practices](Software%20Development%20Practices.md) like DDD, TDD and BDD
- Practice test-driven development to always keep the code deployable
	- Maintain an automated test suite.
	- Build monitoring, logging and fault tolerance by design
- - In Behaviour Driven Development, tests are a byproduct of systematic thinking
	- Keep the boy scout mentality - always leave the code better than you found it
- Work in small features
	- Feature branches should live no longer than a day
	- For longer features, use feature flags
- Transition to [Microservices](Microservices.md) when it gives more performance than monoliths
**Feedback loop**
- When master is broken in CI, drop everything and fix it. Keep a "no broken windows" policy

