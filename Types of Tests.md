
- Prioritize unit tests
- Postpone slower tests during CI

- Don't run all tests parallely - longer UI tests could be failing due to failing unit tests
- So run all unit tests in parallel, then switch to service tests, and then UI tests

- Run conditional stage testing - test only if a certain component was modified
- Stop all running jobs when one test has failed - in parallel situations

![[Pasted image 20221230140324.png]]

![[Pasted image 20221230140823.png]]