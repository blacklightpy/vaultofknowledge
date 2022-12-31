- What is Testing:

- Types of Tests:
	- Smoke Tests - high level functionality; whether starts
		- Before commit (locally) - run a pre-commit Git hook (script), In CI before E2E and acceptance tests, Before Deployment (infra and configs), After deployment (functionality checks)
	- Unit Tests
	- E2E Tests
	- Acceptance Tests
	- More
		- Regression Tests - after fixing a bug to see it does not repeat
		- System Tests - like integration tests, but dependencies are mocked or stubbed
		- Integration Tests - inter-operation tests
		- Pre-flight check - acceptance/smoke tests in prod

- Testing Tools:

- How Testing Works:

- Tips for Testing:

- Terms
	- mocks
	- stubs