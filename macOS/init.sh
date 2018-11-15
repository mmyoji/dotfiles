#!/bin/bash

# 1. Install Xcode CLI tools:
#   $ xcode-select --install
# 2. Install Homebrew:
#   $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 3. Generate ssh key
#   $ ssh-kegen -t ed25519
# 4. Execute this file:
#   $ bash macOS/init.sh
# 5. Additional instructions
#   # Install fzf useful commands
#   $ $(brew --prefix)/opt/fzf/install

set -eux

mkdir -p ~/src/{github,gitlab}.com/mmyoji
mkdir -p ~/{bin,pkg}
mkdir -p ~/.config/nvim
mkdir -p ~/.profile.d

[[ -d ${HOME}/src/gitlab.com/mmyoji/dotfiles ]] || git clone git@gitlab.com:mmyoji/dotfiles.git $HOME/src/gitlab.com/mmyoji/dotfiles

if [[ ! -h ${HOME}/.gemrc ]]; then
  cd $HOME
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gemrc ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gitconfig ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.tmux.conf ~/
  cp ~/src/gitlab.com/mmyoji/dotfiles/.profile.d/{aliases,completion,direnv,others,prompt} ~/.profile.d/
  cp ~/src/gitlab.com/mmyoji/dotfiles/.config/nvim/* ~/.config/nvim/
  cat ~/src/gitlab.com/mmyoji/dotfiles/macOS/.bash_profile >> ~/.bash_profile
fi

if [[ ! -f ${HOME}/git-completion.bash ]]; then
  curl -sSL -o $HOME/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [[ ! -f ${HOME}/git-prompt.sh ]]; then
  curl -sSL -o $HOME/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

brew bundle --file=${HOME}/src/gitlab.com/mmyoji/dotfiles/macOS/Brewfile

