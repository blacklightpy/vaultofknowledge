- What is CI-CD
- Why do we need CI-CD
- [[Tools for CI and CD|Tools for CI/CD]]

# How to implement CI/CD Pipeline


# Requirements for CI/CD
 - Parallel computing systems for parallel tests etc.

# Tips for CI-CD
- When master is broken - drop everything and fix it - keep a "no broken windows" policy
- Run fast and fundamental tests first
- Always use same environment for testing
- Build-in quality checking - style and security
- Include PRs, but Peer Review each PR
- In CD - Auto Deploy PRs merged to master
- Start development with small feature branches
- In Behaviour Driven Development, tests are a byproduct of systematic thinking
	- Be like boy scouts - always leave the code better than you found it
- Deploy to staging for QA/manual testing

- Document flaky tests and improve them
- Optimize Feedback loop
	- Invest in a CI/CD that can run tests in parallel stages.
	- Improve slow tests