FROM python:3.10.5

RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

# Install Oh My Zsh
RUN apt install -y zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
    sed -i '/^plugins=/ s/git)$/\n  git\n  zsh-autosuggestions\n)/' ~/.zshrc

WORKDIR /work

ENTRYPOINT ["/bin/zsh"]
