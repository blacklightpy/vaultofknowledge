Build - Test - Deploy Staging - Deploy Production
**If using Docker and Kubernetes:**
Build - Test - Dockerize - Deploy to Kubernetes - Tag latest docker


Tips: 
- Document Flaky Tests
- Write better tests until you don't get flaky ones - improve test suite
- Optimize Feedback loop
	- Invest in a CI/CD that can run tests in parallel stages.
	- Improve slow tests