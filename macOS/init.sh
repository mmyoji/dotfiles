#!/bin/bash

set -eux

[[ -d ${HOME}/src/gitlab.com ]] || mkdir -p ~/src/{github,gitlab}.com/mmyoji
[[ -d ${HOME}/pkg ]]            || mkdir -p ~/{bin,pkg}

if [[ ! -h ${HOME}/.gemrc ]]; then
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.commit_template ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gemrc ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gitconfig ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.tmux.conf ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.profile ~/
  cat ~/src/gitlab.com/mmyoji/dotfiles/macOS/.bash_profile >> ~/.bash_profile
fi

if [[ ! -f ${HOME}/git-completion.bash ]]; then
  curl -sSL -o $HOME/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
fi

if [[ ! -f ${HOME}/git-prompt.sh ]]; then
  curl -sSL -o $HOME/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

brew bundle --file=${HOME}/src/gitlab.com/mmyoji/dotfiles/macOS/Brewfile

