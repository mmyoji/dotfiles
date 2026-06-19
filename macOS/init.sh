#!/bin/bash

set -eux

[[ -d ${HOME}/dev ]]  || mkdir -p ~/dev
[[ -d ${HOME}/.zsh ]] || mkdir -p ~/.zsh/completion

if [[ ! -d ${HOME}/.config ]]; then
  mkdir -p ~/.config/git
  mkdir -p ~/.config/nvim
fi

if [[ ! -h ${HOME}/.gemrc ]]; then
  cp ~/dev/dotfiles/.gemrc       ~/
  cp ~/dev/dotfiles/macOS/.zshrc ~/

  cp ~/dev/dotfiles/init.vim                     ~/.config/nvim/init.vim
  cp ~/dev/dotfiles/.config/git/config           ~/.config/git/config
  cp ~/dev/dotfiles/.config/git/commit_template  ~/.config/git/commit_template
  cp ~/dev/dotfiles/macOS/gitignore              ~/.config/git/ignore
fi

if [[ ! -f ${HOME}/.zsh/completion/git-completion.bash ]]; then
  curl -sSL -o $HOME/.zsh/completion/git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  curl -sSL -o $HOME/.zsh/completion/_git                 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

brew bundle --file=${HOME}/dev/dotfiles/macOS/Brewfile
