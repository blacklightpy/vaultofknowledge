### Tips on writing good Dockerfiles

1. **Avoid installing unnecessary packages, and re-installing packages**
   
   Use a requirements.txt file to install all required packages at once instead of re-installing them each time.
   
   Reason: To reduce the size and build time of the docker image.
   
2. **Chain RUN commands**
   
   Reason: Each RUN command creates a cacheable unit, and creates a new image layer. This can be avoided by chaining RUN commands.
   
   e.g. 
   
   `RUN sudo apt update`
   `RUN sudo apt install firefox`

	``` Dockerfile
	RUN sudo apt update \
		&& sudo apt install firefox
	```

3. **Use a .dockerignore file**
   
   Reason: Removes unnecessary files from the docker image, reducing its size and build time.

4. **Use the best order of statements**
   
   Include the most frequently changing statements at the bottom of the *Dockerfile*.
   
   e.g. `RUN` commands at the top and `COPY` commands to the bottom. `CMD` and `ENTRYPOINT` should be defined at the end of the *Dockerfile*.
   
   Reason: When you change a statement in your *Dockerfile*, its cache gets invalidated, and all the subsequent statements' cache will also break.

5. **Avoid installing unncessary package dependencies**
   
   e.g. Use the `--no-install-recommends` option with APT while building the image.