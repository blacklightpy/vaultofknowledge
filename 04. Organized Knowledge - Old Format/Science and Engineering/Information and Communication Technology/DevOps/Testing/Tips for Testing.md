**Writing tests**
- Build-in quality checking for both style and security
- Testers should work with Devs
- Testers are not replaceable, they know how users work
- Testers should constantly explore and learn new skills.

### For Automated Tests in CI/CD
**Running**
- Don't run all tests parallely - longer UI tests could be failing due to failing unit tests
- So run all unit tests in parallel, then switch to service tests, and then UI tests
- Think of writing tests as an investment in the future
- "Writing tests is kind of an art" - settle for 80% coverage, not 100%

**Ideas for running tests**
- Run conditional stage testing - test only if a certain component was modified
- Stop all running jobs when one test has failed - in parallel situations
- Auto-cancel queued builds - in case a developer made a quick change just after pushing once

![[Comparison of Tests.png]]

![[Run unit tests first.png]]
