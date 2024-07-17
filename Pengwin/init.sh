#!/bin/bash

# ### Before running ###
#
# # Generate .ssh files
# # And register the public keys in GitLab and GitHub.
# $ ssh-keygen -t ed25519 -C mmyoji@Pengwin-Ryzen9-3900XT
#
#
# ### Then run this script ###
# $ curl -sSL -o ./init.sh https://github.com/mmyoji/dotfiles/raw/main/Pengwin/init.sh
# $ GIT_VERSION=2.45.2 bash init.sh
#
#
# ### After running script ###
#
# # Edit files for WSL env
# $ cp ~/dev/dotfiles/Pengwin/.profile ~/.profile # or `ln -s`
# $ cp ~/dev/dotfiles/Pengwin/.bashrc  ~/.bashrc  # or `ln -s`
#
# $ ~/.fzf/install
#
# # Install required programming language
# # see: https://github.com/jdx/mise
# $ mise use --global node@20
#

set -eux

## Install apt packages ##
sudo apt update -y && sudo apt install -y \
  build-essential \
  curl \
  direnv \
  file \
  git \
  jq \
  libsqlite3-dev \
  libssl-dev \
  make \
  ripgrep \
  tree \
  unzip \
  vim

# dotfiles #
if [ ! -d "$HOME/dev/dotfiles" ]; then
  git clone git@github.com:mmyoji/dotfiles.git   $HOME/dev/dotfiles
fi

# mise #
if [ ! -e "$HOME/.local/bin/mise" ]; then
  curl https://mise.jdx.dev/install.sh | sh
fi

# # nvim #
# if [ ! -d "$HOME/.config/nvim" ]; then
#   mkdir -p "$HOME/.config/nvim"
#   cp $HOME/dev/dotfiles/init.vim $HOME/.config/nvim/init.vim
#
#   mkdir -p "$HOME/tmp"
#
#   curl -sSL -o ~/tmp/nvim.appimage https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
#   chmod u+x ~/tmp/nvim.appimage
#   # see: https://github.com/neovim/neovim/releases/tag/stable
#   ~/tmp/nvim.appimage --appimage-extract
#   ln -s $HOME/tmp/squashfs-root/usr/bin/nvim $HOME/.local/bin/nvim
# fi

# fzf #
if [ ! -d ~/.fzf ]; then
  git clone https://github.com/junegunn/fzf.git  $HOME/.fzf
fi

# git-completion #
if [ ! -e ~/git-completion.bash ]; then
  curl -sSL -o ~/git-completion.bash \
    https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-completion.bash
fi

# git-prompt #
if [ ! -e $HOME/git-prompt.sh ]; then
  curl -sSL -o ~/git-prompt.sh \
    https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-prompt.sh
fi

# Apply my custom dotfiles
[ -e ~/.commit_template ] || ln -s $HOME/dev/dotfiles/.commit_template  ~/
[ -e ~/.gitconfig ]       || ln -s $HOME/dev/dotfiles/.gitconfig        ~/
