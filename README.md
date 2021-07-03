# Dev Containers
[![GitHub license](https://img.shields.io/github/license/fangedhex/devcontainers)](https://github.com/fangedhex/devcontainers/blob/master/LICENSE)

I made some devcontainers for myself and published them on Github + Docker Hub for the moment. I got some problems with the devcontainers given by Microsoft : example, the rust one doesn't work for me with some libraries I want to use (and when I look their Dockerfile, it's almost the same as mine).

There is actually 3 devcontainers and one base container (contains build-essential + zsh + oh my zsh customised for my needs) : one for node, one for rust and one for java. Each of those containers are available at https://hub.docker.com/repository/docker/fangedhex/devcontainers and you can grab them through the tag (base, node, rust and java). Currently the CI system is very simple and I will add devcontainers as I need them.