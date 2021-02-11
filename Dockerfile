FROM debian:stable-slim

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apt-get update && apt-get install -y build-essential curl git gpg sudo \
	&& groupadd --gid $USER_GID $USERNAME \
	&& useradd -s /bin/zsh --uid $USER_UID --gid $USER_GID -m $USERNAME \
	&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENTRYPOINT [ "/bin/zsh" ]
CMD [ "-1" ]
