```
 __          _______  _      _ _       ____
 \ \        / /  __ \| |    (_) |     |  _ \
  \ \  /\  / /| |__) | |     _| |__   | |_) | _____  __
   \ \/  \/ / |  ___/| |    | | '_ \  |  _ < / _ \ \/ /
    \  /\  /  | |    | |____| | |_) | | |_) | (_) >  <
     \/  \/   |_|    |______|_|_.__/  |____/ \___/_/\_\
```

![WPLib-Box](https://github.com/wplib/wplib.github.io/blob/master/WPLib-Box-100x.png)


# nginx proxy Docker Container for WPLib Box
This is the repository for the [proxy-docker](https://nginx.org/en/) Docker container implemented for [WPLib-Box](https://github.com/wplib/wplib-box).
It currently provides versions 1.12.2 1.13.8


## Supported tags and respective Dockerfiles

`1.13.8`, `1.13`, `latest` _([1.13.8/Dockerfile](https://github.com/wplib/proxy-docker/blob/master/1.13.8/Dockerfile))_

`1.12.2, `1.12`` _([1.12.2/Dockerfile](https://github.com/wplib/proxy-docker/blob/master/1.12.2/Dockerfile))_


## Using this container.
If you want to use this container as part of WPLib, then use the Docker Hub method.
Or you can use the GitHub method to build and run the container.


## Using it from Docker Hub

### Links
(Docker Hub repo)[https://hub.docker.com/r/wplib/proxy/]
(Docker Cloud repo)[https://cloud.docker.com/swarm/wplib/repository/docker/wplib/proxy/]


### Setup from Docker Hub
A simple `docker pull wplib/proxy` will pull down the latest version.


### Runtime from Docker Hub
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name wplib_proxy_1.13.8 --restart unless-stopped --network wplibbox -p 80:80 --mount type=bind,source=/srv/sites,target=/srv/sites wplib/proxy:1.13.8`

stop - Stop a Docker container.

`docker stop wplib_proxy_1.13.8`

run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name wplib_proxy_1.13.8 --network wplibbox -p 80:80 --mount type=bind,source=/srv/sites,target=/srv/sites wplib/proxy:1.13.8`

shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name wplib_proxy_1.13.8 -i -t --network wplibbox -p 80:80 --mount type=bind,source=/srv/sites,target=/srv/sites wplib/proxy:1.13.8 /bin/bash`

rm - Remove the Docker container.

`docker container rm wplib_proxy_1.13.8`


## Using it from GitHub repo

### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/wplib/proxy-docker.git`


### Building from GitHub repo
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.


`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.


`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.


`make push` - Push already built Docker images to Docker Hub, (only for WPLib admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
When you `cd` into a version directory you can also perform a few more actions.

`make start` - Spin up a Docker container with the correct runtime configs.


`make stop` - Stop a Docker container.


`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.


`make shell` - Run a shell, (/bin/bash), within a Docker container.


`make rm` - Remove the Docker container.


