App Developers - build containers
SysAdmins - run containers
## Running vs Building a container
### Running a container
It is similar to launching an application.

There is a pre-configured script configured at build time with the `ENTRYPOINT` instruction that contains the script to launch and the container runs till the script exits with status 0.
#### Using command line

```bash
docker pull <container image URL>

docker run -d --name=<NAME> [ -e <ENV VARIABLE> -p <PORT MAPPING/PROTOCOL> -v <VOLUME MAPPING> ] [other options] <container image URL>
```

You may be used to seeing the parts of the command being split into lines:

```bash
docker pull <container image URL>

docker run -d \
--name=<NAME> \
[ -e <ENV VARIABLE> \
-p <PORT MAPPING/PROTOCOL> \
-v <VOLUME MAPPING> ] \
[other options] \
<container image URL>
```
#### Using Docker Compose
Create a .yml Docker Compose file with the following contents to describe the parameters of the container.

```yaml
version: <version>

services:
  <NAME>:
    image: <container image URL>
    [
    environment:
      - [ENV VARIABLE 1]
      - [ENV VARIABLE 2]
    ports:
      - [PORT MAPPING/PROTOCOL]
    volumes:
      - [VOLUME MAPPING 1]
      - [VOLUME MAPPING 2]
    ]
    [other options]
```
### Building a container
Containers are built using Dockerfiles. A Dockerfile is comprised of many instructions. The instructions are written as uppercase by convention. All Dockerfiles begin with the `FROM <base image>` instruction, which may only be preceded by `ARG` instructions.

When using a Dockerfile, the easiest way to think about what needs to be put into a new container is this way: You're taking some base-level container and adding or overriding stuff in your Dockerfile to ultimately generate a stand-lone container that's a new image.

So if you're trying a centos:7 container and installing an application into it and make it autostartup and run when you do the `run` command, you'll need to remember these key things:

- Use the `RUN` syntax for any command-line things you'd need to do
- Use the `COPY` syntax to take files from your local computer and put them into the container image
- Learn `BASH` scripting and update the default `ENTRYPOINT` so your Bash script executes the new software and doesn't exit the script.

  e.g.:
``` Bash
#!/bin/bash
echo "Hello World" > test.txt
./Instagram.AppImage
/bin/bash
```
   
With this script in place, even if the binary crashes, the container will fallback to bash shell and you can then check for any logs or troubleshoot.

Obviously, this is for debugging, and not for production.
### `RUN` vs `CMD` vs `ENTRYPOINT` instructions

- `RUN` executes commands in a new layer and creates a new image. So it is recommended to chain them together.
	- e.g. it's used for installing software packages
- `CMD` sets default commands and/or parameters for the container.
	- If the `CMD` does not define an executable, it should be defined by the `ENTRYPOINT`
	- In case there are multiple `CMD` statements, only the last one gets executed.
	- It can be overwritten from the command line when a Docker container runs.
- `ENTRYPOINT` configures a container that'll run as an executable.
	- Unlike `CMD`, an `ENTRYPOINT` command does not get ignored by additional parameters that are specified in the `docker run` command.

> [!NOTE]
> If `CMD` is defined in base image, setting an `ENTRYPOINT` will override it in the derived image. In such a case, `CMD` has to be redefined.

All three instructions have two forms: Shell form and Executable form.
#### Shell form
`<Instruction> <Command>`
e.g.: 
```
CMD echo "Hello World!"
```
#### Executable form
`<Instruction> ["executable", "parameter1", "parameter2", ...]`
e.g.: ```
```
RUN ["apt", "install", "firefox"]
```
#### How `CMD` and `ENTRYPOINT` interact

- In the absence of an `ENTRYPOINT`, If the `CMD` has an executable, it will be executed along with its parameters.
- If there is an `ENTRYPOINT`, the `CMD` parameters are passed in addition to the `ENTRYPOINT` executable and parameters.
- If there are executables in both `CMD` and `ENTRYPOINT`, `ENTRYPOINT` takes precedence.

|                            | No ENTRYPOINT           | ENTRYPOINT exec_entry p1_entry | ENTRYPOINT ["exec_entry", "p1_entry"]          |
| -------------------------- | ----------------------- | ------------------------------ | ---------------------------------------------- |
| No CMD                     | error, not allowed      | /bin/sh -c exec_entry p1_entry | exec_entry p1_entry                            |
| CMD ["exec_cmd", "p1_cmd"] | exec_cmd p1_cmd         | /bin/sh -c exec_entry p1_entry | exec_entry p1_entry exec_cmd p1_cmd            |
| CMD ["p1_cmd", "p2_cmd"]   | p1_cmd p2_cmd           | /bin/sh -c exec_entry p1_entry | exec_entry p1_entry p1_cmd p2_cmd              |
| CMD exec_cmd p1_cmd        | /bin/sh exec_cmd p1_cmd | /bin/sh -c exec_entry p1_entry | exec_entry p1_entry /bin/sh -c exec_cmd p1_cmd |

> [!NOTE]
> - `exec` means executable
> - `p1` and `p2` are parameters, for the executable
> - `_cmd` suffix means from CMD
> - `_entry` suffix means from ENTRYPOINT

## Docker Compose
Docker compose is used to keep a seperation of conerns. Different apps and services should run in different containers.

e.g. You have an app that has both a web component and a database component.

1. You need a `Dockerfile` to build the web piece of the application (install middleware, copy application code, run webserver).
2. You also need a `Dockerfile` to build the database piece of the application (install database software, run SQL to build schema, startup the database).
3. You need a docker-compose file that starts up both containers together.
4. Run `docker-compose up` to start up the full stack application

e.g.:
```yaml
...
services:
	webserver:
		image: dockersamples/visualizer: stable
		ports:
			- "8080:8080"
		volumes:
			- "/var/run/docker.sock:/var/run/docker.sock"
		deploy:
			placement:
				constraints: [node.role == manager]
		networks:
			- webnet
	database:
		image: redis
		ports:
			- "6379:6379"
		volumes:
			"/home/docker/data:/data"
		deploy:
			placement:
				constraints: [node.role == manager]
		command: redis-server --appendonly yes
		networks:
			- webnet
networks:
	webnet:
...
```

## [[Kubernetes]]

![[Kubernetes.png]]

Kubernetes/K8s is essentially docker compose on steroids.

Docker compose defines the application stack to run.
Kubernetes defines the application stack and lets the control plane monitor the containers, deploys them to multiple servers, and keeps them running if they were to crash.

Kubernetes is what should be used in a production ready, highly available application, rather than docker-compose which better suits a demo environment.

The components of the Kubernetes Control Plane are:

`kube-apiserver` : The API server exposes the Kubernetes API 
`etcd` : Consistent and HA key-value store used s Kubernetes' backing store for all cluster data
`kube-scheduler` : Watches for newly created Pods with no assigned node and selects a node for them to run on
`kube-controller-manager` : Runs controller processes