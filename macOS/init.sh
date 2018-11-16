#!/bin/bash

set -eux

[[ -d ${HOME}/src/gitlab.com ]] || mkdir -p ~/src/{github,gitlab}.com/mmyoji
[[ -d ${HOME}/pkg ]]            || mkdir -p ~/{bin,pkg}
[[ -d ${HOME}/.config/nvim ]]   || mkdir -p ~/.config/nvim
[[ -d ${HOME}/.profile.d ]]     || mkdir -p ~/.profile.d

if [[ ! -h ${HOME}/.gemrc ]]; then
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

if [[ ! -d ${HOME}/src/gitlab.com/mmyoji/whatidid ]]; then
  git clone git@gitlab.com:mmyoji/whatidid.git ~/src/gitlab.com/mmyoji/whatidid
  ln -s ~/src/gitlab.com/mmyoji/whatidid/did.md ~/
fi

brew bundle --file=${HOME}/src/gitlab.com/mmyoji/dotfiles/macOS/Brewfile

