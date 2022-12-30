# Continuous Integration
- Code merges by developers multiple times a day 
- Each code merge recieves an automated code build and test sequence
# Continuous Delivery
- If code changes are also continuously deployed, it is called continuous delivery
- The deployments are triggered manually
# Continuous Deployment
- If moving of code from source to production is automated, it is called continuous deployment

"If any developer in your team can stop what they’re doing right now and ship the current development version of code to production in 20 minutes or less without anyone stressing about what could happen — congratulations, you’re doing CI/CD!"

# Images
![[Pasted image 20221230133238.png]]
![[Pasted image 20221230133215.png]]

# How to build a pipeline
- Architect in a way that supports iterative releases - Avoid tight coupling between components
	- Implement metrics that help detect issues in realtime (?)
- Practice test-driven development to always keep the code deployable
	- Maintain an automated test suite.
	- Build monitoring, logging and fault tolerance by design
- Work in small features
	- Feature branches should live no longer than a day
	- For longer features, use feature flags