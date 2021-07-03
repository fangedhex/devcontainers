FROM fangedhex/devcontainers:base
#ENV DEBIAN_FRONTEND noninteractive
RUN sudo mkdir -p /usr/share/man/man1 \
	&& sudo apt-get install -y default-jdk
ADD zshrc.d .zshrc.d
