#!/bin/bash

# ### Before running ###
#
# # Generate .ssh files
# # And register the public keys in GitLab and GitHub.
# $ ssh-keygen -t ed25519 -C mmyoji@Pengwin-Ryzen9-3900XT
#
#
# ### Then run this script ###
# $ curl -sSL -o ./init.sh https://github.com/mmyoji/dotfiles/raw/main/Debian/init.sh
# $ GIT_VERSION=2.45.2 bash init.sh
#
#
# ### After running script ###
#
# # Edit files for WSL env
# $ cp ~/dev/dotfiles/Debian/.profile ~/.profile
# $ cp ~/dev/dotfiles/Debian/.bashrc  ~/.bashrc
#
# $ ~/.fzf/install
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
  tmux \
  tree \
  unzip \
  vim

# dotfiles #
if [ ! -d "$HOME/dev/dotfiles" ]; then
  git clone git@github.com:mmyoji/dotfiles.git $HOME/dev/dotfiles
fi

# fzf #
if [ ! -d ~/.fzf ]; then
  git clone https://github.com/junegunn/fzf.git  $HOME/.fzf
fi

# git #
if [ ! -d ~/.config/git ]; then
  mkdir -p ~/.config/git

  cp $HOME/dev/dotfiles/.config/git/config          ~/.config/git/config
  cp $HOME/dev/dotfiles/.config/git/commit_template ~/.config/git/commit_template
fi

# git-completion #
if [ ! -e ~/git-completion.bash ]; then
  curl -sSL -o ~/git-completion.bash \
    https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-completion.bash
fi

# git-prompt #
if [ ! -e ~/git-prompt.sh ]; then
  curl -sSL -o ~/git-prompt.sh \
    https://raw.githubusercontent.com/git/git/v$GIT_VERSION/contrib/completion/git-prompt.sh
fi

# mise #
if [ ! -e "$HOME/.local/bin/mise" ]; then
  curl https://mise.run | sh
fi

# tmux #
if [ ! -e "$HOME/.tmux.conf" ]; then
  cp $HOME/dev/dotfiles/.tmux.conf ~/.tmux.conf
fi

