#!/bin/bash

set -eux

[[ -d ${HOME}/src/gitlab.com ]] || mkdir -p ~/src/{github,gitlab}.com/mmyoji
[[ -d ${HOME}/pkg ]]            || mkdir -p ~/{bin,pkg}
[[ -d ${HOME}/.config ]]        || mkdir -p ~/.config/nvim

if [[ ! -h ${HOME}/.gemrc ]]; then
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.commit_template  ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gemrc            ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gitconfig        ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.tmux.conf        ~/

  ln -s ~/src/gitlab.com/mmyoji/dotfiles/macOS/.zshrc      ~/

  # because these files sometimes need to be modified on macOS
  cp ~/src/gitlab.com/mmyoji/dotfiles/.vimrc               ~/.config/nvim/init.vim
fi

brew bundle --file=${HOME}/src/gitlab.com/mmyoji/dotfiles/macOS/Brewfile

