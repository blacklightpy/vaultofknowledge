This method is used to make deployments seamless, safe and fully reversible in case of any errors.

# How it works
There are two production environments - blue and green. After deploying a build to the alternate environment, the default endpoint is changed to that to get users to the new version.

In case of any big problems, users can be easily switched back to the old version by reverting the endpoint.

![[Blue Green Deployment.png]]