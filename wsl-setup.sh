#!/bin/bash

# ### Before running ###
#
# # Install:
# #   - docker (CLI)
# $ pengwin-setup
#
# # Generate .ssh files
# # And register the public keys in GitLab, GitHub, etc.
# $ ssh-keygen -t ed25519
#
#
# ### Then run this script ###
# $ curl -sSL -o ./init.sh https://gitlab.com/mmyoji/dotfiles/raw/master/wsl-setup.sh
# $ bash init.sh
#
#
# ### After running script ###
#
# # Edit files for WSL env
# $ vim $HOME/.profile
#
# $ echo "[ -f ~/.profile ] && source ~/.profile" >> ~/.bashrc
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
  htop \
  jq \
  libmysqlclient-dev \
  libpq-dev \
  libssl-dev \
  make \
  neovim \
  tmux \
  tree


# dotfiles #
if [ ! -d "$HOME/src/gitlab.com/mmyoji/dotfiles" ]; then
  git clone git@gitlab.com:mmyoji/dotfiles.git       $HOME/src/gitlab.com/mmyoji/dotfiles
fi

# anyenv #
if [ ! -d "$HOME/.anyenv" ]; then
  git clone https://github.com/anyenv/anyenv         $HOME/.anyenv
  git clone https://github.com/znz/anyenv-update.git $HOME/.anyenv/plugins/anyenv-update
fi

# fzf #
if [ ! -d ~/.fzf ]; then
  git clone https://github.com/junegunn/fzf.git      $HOME/.fzf
fi

# git-completion #
git_version=v2.21.0
if [ ! -e ~/git-completion.bash ]; then
  curl -sSL -o ~/git-completion.bash \
    https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-completion.bash
fi

# git-prompt #
if [ ! -e $HOME/git-prompt.sh ]; then
  curl -sSL -o ~/git-prompt.sh \
    https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-prompt.sh
fi

# z #
z_version=v1.11
if [ ! -e $HOME/z.sh ]; then
  curl -sSL -o ~/z.sh \
    https://raw.githubusercontent.com/rupa/z/$z_version/z.sh
fi


# Apply my custom dotfiles
[ -e ~/.commit_template ] || ln -s $HOME/src/gitlab.com/mmyoji/dotfiles/.commit_template  ~/
[ -e ~/.gemrc ]           || ln -s $HOME/src/gitlab.com/mmyoji/dotfiles/.gemrc            ~/
[ -e ~/.gitconfig ]       || ln -s $HOME/src/gitlab.com/mmyoji/dotfiles/.gitconfig        ~/
[ -e ~/.tmux.conf ]       || ln -s $HOME/src/gitlab.com/mmyoji/dotfiles/.tmux.conf        ~/

mkdir -p ~/.config/nvim   || cp $HOME/src/gitlab.com/mmyoji/dotfiles/.vimrc               ~/.config/nvim/init.vim

# Edit after running script:
#   - Several $HOME to $HOME
#   - Add $HOME/bin to $PATH
#   - Set prompt setting to WSL specific
[ -e ~/.profile ]         || cp $HOME/src/gitlab.com/mmyoji/dotfiles/.profile-brew ~/.profile

