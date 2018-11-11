#!/bin/bash

# 1. Install Xcode CLI tools:
#   $ xcode-select --install
# 2. Install Homebrew:
#   $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 3. Install dotfiles:
#   $ git clone git@gitlab.com:mmyoji/dotfiles.git $HOME/src/gitlab.com/mmyoji/dotfiles
# 3. Execute this file:
#   $ bash macos_init.sh
# 4. Install required programming languages by anyenv
#   ndenv and node is required for yarn installation:
#     $ anyenv install ndenv
#     $ ndenv install v10.12.0
#     $ ndenv global v10.12.0
#   if you want:
#     $ anyenv install goenv
#     $ goenv install 1.11.1
#     $ goenv global 1.11.1
#     $ anyenv install rbenv
#     $ rbenv install 2.5.3
#     $ rbenv global 2.5.3
# 5. Install packages by Homebrew Bundle:
#   $ brew bundle

set -eux

if [[ ! -x ${HOME}/.ssh/id_rsa ]]; then
  echo "Run `ssh-keygen -t rsa` and register .ssh/id_rsa.pub to GitHub & GitLab"
  exit 1
fi

mkdir -p $HOME/src/{github,gitlab}.com/mmyoji
mkdir -p $HOME/{bin,pkg}
mkdir -p $HOME/.config/nvim

if [[ ! -x ${HOME}/.gemrc ]]; then
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gemrc ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gitconfig ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.tmux.conf ~/
  cp ~/src/gitlab.com/mmyoji/dotfiles/.config/nvim/* ~/.config/nvim/
fi

if [[ ! -d ${HOME}/.anyenv ]]; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
  echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
fi

if [[ ! -d ${HOME}/.anyenv/plugins/anyenv-update ]]; then
  mkdir -p ~/.anyenv/plugins
  git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update
fi
