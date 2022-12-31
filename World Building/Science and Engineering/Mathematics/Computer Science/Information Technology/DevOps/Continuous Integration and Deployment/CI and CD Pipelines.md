**Basic steps:** Build - Test - Deploy Staging - Deploy Production
**If using Docker and Kubernetes:** Build - Test - Dockerize - Deploy to Kubernetes - Tag latest docker
- Use a CI/CD System
- During CI
	- [[Automated Tests]]

# How to build a CI/CD pipeline
## Tips
- Architect in a way that supports iterative releases - Avoid tight coupling between components
	- Implement metrics that help detect issues in realtime (?)
- Practice test-driven development to always keep the code deployable
	- Maintain an automated test suite.
	- Build monitoring, logging and fault tolerance by design
- Work in small features
	- Feature branches should live no longer than a day
	- For longer features, use feature flags
- Devs can deploy to staging
- All deployments should only involve the click of a button
