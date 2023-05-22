- Unit Tests
- E2E Tests
- Acceptance Tests

- Smoke Tests
	- They are used to check whether the code can start.
	- They can be used in the four following cases:
		- As a pre-commit Git Hook before local commits
		- In CI before E2E and acceptance tests
		- Before Deployment (infra and configs)
		- After deployment (functionality checks)
- Manual Tests
	- Exploratory Testing

- Regression Tests - after fixing a bug to see it does not repeat
- System Tests - like integration tests, but dependencies are mocked or stubbed
- Integration Tests - inter-operation tests
- Pre-flight check - acceptance/smoke tests in prod