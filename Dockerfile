FROM debian:stable-slim

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ENV TERM=xterm

# Installing basic packages + create default user
RUN apt-get update && apt-get install -y build-essential curl git gpg sudo \
	&& groupadd --gid $USER_GID $USERNAME \
	&& useradd -s /bin/zsh --uid $USER_UID --gid $USER_GID -m $USERNAME \
	&& echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
	&& chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR /home/$USERNAME

# Install some eyecandy with ZSH + theme + plugins
RUN sudo apt-get install -y zsh \
	&& sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# We add our custom zshrc to the container
ADD zshrc .zshrc
# We run zsh once to install everything with zinit
RUN zsh -c "source ~/.zshrc && exit"

ENTRYPOINT [ "/bin/zsh" ]
CMD [ "-1" ]
