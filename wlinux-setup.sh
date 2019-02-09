#!/bin/bash

# 1. Before running:
#
# # Install:
# #   - docker (CLI)
# #   - neovim
# $ wlinux-setup
#
# # Generate .ssh files
# # And register the public keys in GitLab, GitHub, etc.
# $ ssh-keygen -t ed25519
#
# $ mkdir -p /c/Users/<username>/Dev
#
# And add following to your `$HOME/.bashrc`
# ```
# export DEV_HOME=/c/Users/<username>/Dev
# ```
#
#
# 2. Then run this script.
# $ curl -sSL -o ./init.sh https://gitlab.com/mmyoji/dotfiles/raw/master/wlinux-setup.sh
# $ bash init.sh
#
#
# 3. After running script:
#
# # Edit files for WLinux env
# $ vim $HOME/.profile
#
# # Install fzf
# $ ~/.fzf/install
#
# # Install ctags
# $ cd $DEV_HOME/src/github.com/universal-ctags/ctags
# $ ./autogen.sh && ./configure && make
# $ sudo make install
#

set -eux

## Install apt packages ##
# ref: https://gitlab.com/mmyoji/devenv-setup
sudo apt update -y && sudo apt install -y \
  autoconf \ # for ctags
  build-essential \
  direnv \
  git \
  htop \
  jq \
  libmysqlclient-dev \
  libpq-dev \
  make \
  tmux \
  tree

## Clone git repos ##

# anyenv #
#   - go
#   - node
if [ ! -d ~/.anyenv ]; then
  git clone https://github.com/riywo/anyenv.git      ~/.anyenv
  git clone https://github.com/znz/anyenv-update.git ~/.anyenv/plugins/anyenv-update
fi
# fzf #
if [ ! -d ~/.fzf ]; then
  git clone https://github.com/junegunn/fzf.git      ~/.fzf
fi

# dotfiles #
if [ ! -d "$DEV_HOME/src/gitlab.com/mmyoji/dotfiles" ]; then
  git clone git@gitlab.com:mmyoji/dotfiles.git       $DEV_HOME/src/gitlab.com/mmyoji/dotfiles
fi
# ctags #
if [ ! -d "$DEV_HOME/src/github.com/universal-ctags/ctags" ]; then
  git clone https://github.com/universal-ctags/ctags $DEV_HOME/src/github.com/universal-ctags/ctags
fi


# Get single util files
git_version=v2.20.1
if [ ! -e ~/git-completion.bash ]; then
  curl -sSL -o ~/git-completion.bash \
    https://raw.githubusercontent.com/git/git/$git_version/contrib/completion/git-completion.bash
fi
if [ ! -e ~/git-prompt.sh ]; then
  curl -sSL -o ~/git-prompt.sh \
    https://github.com/git/git/blob/$git_version/contrib/completion/git-prompt.sh
fi

z_version=v1.11
if [ ! -e ~/z.sh ]; then
  curl -sSL -o ~/z.sh \
    https://raw.githubusercontent.com/rupa/z/$z_version/z.sh
fi


# Apply my custom dotfiles
[ -e ~/.commit_template ] || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.commit_template  ~/
[ -e ~/.gemrc ]           || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.gemrc            ~/
[ -e ~/.gitconfig ]       || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.gitconfig        ~/
[ -e ~/.tmux.conf ]       || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.tmux.conf        ~/

[ -d ~/.config/nvim ]     || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.config.d/nvim    ~/.config/nvim
[ -d ~/.ctags.d ]         || ln -s $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.ctags.d          ~/.ctags.d

# Edit after running script:
#   - Several $HOME to $DEV_HOME
#   - Add $DEV_HOME/bin to $PATH
#   - Set prompt setting to WLinux specific
[ -e ~/.profile ]         || cp $DEV_HOME/src/gitlab.com/mmyoji/dotfiles/.profile ~/.profile

bat_version=0.10.0
type bat && sudo dpkg -P bat # Remove old package first
curl -sSL -o /c/Users/mmyoj/Downloads/bat-musl_${bat_version}_amd64.deb \
  https://github.com/sharkdp/bat/releases/download/v${bat_version}/bat-musl_${bat_version}_amd64.deb
sudo dpkg -i /c/Users/mmyoj/Downloads/bat-musl_${bat_version}_amd64.deb
sudo apt update && sudo apt install -y bat
rm /c/Users/mmyoj/Downloads/bat-musl_${bat_version}_amd64.deb
