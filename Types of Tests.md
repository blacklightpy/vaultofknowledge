
- Prioritize unit tests
- Postpone slower tests during CI

- Don't run all tests parallely - longer UI tests could be failing due to failing unit tests
- So run all unit tests in parallel, then switch to service tests, and then UI tests

![[Pasted image 20221230140324.png]]

![[Pasted image 20221230140823.png]]