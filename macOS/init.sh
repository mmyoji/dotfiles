#!/bin/bash

set -eux

[[ -d ${HOME}/dev ]]     || mkdir -p ~/dev
[[ -d ${HOME}/.config ]] || mkdir -p ~/.config/nvim
[[ -d ${HOME}/.zsh ]]    || mkdir -p ~/.zsh/completion

if [[ ! -d ${HOME}/bin/rtx ]]; then
  curl https://rtx.pub/rtx-latest-macos-arm64 > ~/bin/rtx
  chmod +x ~/bin/rtx
  rtx --version
fi

if [[ ! -h ${HOME}/.gemrc ]]; then
  cp ~/dev/dotfiles/.commit_template  ~/
  cp ~/dev/dotfiles/.gemrc            ~/
  cp ~/dev/dotfiles/.gitconfig        ~/
  cp ~/dev/dotfiles/macOS/.zshrc      ~/

  # because these files sometimes need to be modified on macOS
  cp ~/dev/dotfiles/init.vim         ~/.config/nvim/init.vim
  cp ~/dev/dotfiles/macOS/gitignore  ~/.gitignore
fi

if [[ ! -f ${HOME}/.zsh/completion/git-completion.bash ]]; then
  curl -sSL -o $HOME/.zsh/completion/git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  curl -sSL -o $HOME/.zsh/completion/_git                 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

brew bundle --file=${HOME}/dev/dotfiles/macOS/Brewfile
