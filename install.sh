#!/bin/bash
# @author Bill Guedel <wsguede@gmail.com>
#
# This is what should be run on a fresh install. This should be run as sudo

sudo apt update && sudo apt install \
  zsh \
  git \
  curl \
  direnv \
  xclip -y


# install fnm; prevent the configuration. 
curl -fsSL https://fnm.vercel.app/install | bash -s -- --skip-shell

# install node with fast node manager; and configure npm
fnm install --lts
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

# install zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# install omz
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended

# intall fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
