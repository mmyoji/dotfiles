#!/bin/bash

set -eux

[[ -d ${HOME}/src/gitlab.com ]] || mkdir -p ~/src/{github,gitlab}.com/mmyoji
[[ -d ${HOME}/pkg ]]            || mkdir -p ~/{bin,pkg}
[[ -d ${HOME}/.config ]]        || mkdir -p ~/.config/nvim
[[ -d ${HOME}/.zsh ]]           || mkdir -p ~/.zsh/completion

if [[ ! -h ${HOME}/.gemrc ]]; then
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.commit_template  ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gemrc            ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/.gitconfig        ~/
  ln -s ~/src/gitlab.com/mmyoji/dotfiles/macOS/.zshrc      ~/

  # because these files sometimes need to be modified on macOS
  cp ~/src/gitlab.com/mmyoji/dotfiles/.tmux.conf       ~/
  cp ~/src/gitlab.com/mmyoji/dotfiles/.vimrc           ~/.config/nvim/init.vim
  cp ~/src/gitlab.com/mmyoji/dotfiles/macOS/gitignore  ~/.gitignore
fi

if [[ ! -f ${HOME}/.zsh/completion/git-completion.bash ]]; then
  curl -sSL -o $HOME/.zsh/completion/git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  curl -sSL -o $HOME/.zsh/completion/_git                 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

brew bundle --file=${HOME}/src/gitlab.com/mmyoji/dotfiles/macOS/Brewfile

