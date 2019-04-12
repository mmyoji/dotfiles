#!/bin/bash

# 1. Before running:
#
# # Install:
# #   - docker (CLI)
# #   - neovim
# $ pengwin-setup
#
# # Generate .ssh files
# # And register the public keys in GitLab, GitHub, etc.
# $ ssh-keygen -t ed25519
#
#
# 2. Then run this script.
# $ curl -sSL -o ./init.sh https://gitlab.com/mmyoji/dotfiles/raw/master/pengwin-setup.sh
# $ bash init.sh
#
#
# 3. Then install linuxbrew
# # ref: http://linuxbrew.sh/
# $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
# $ test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# $ echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
#
#
# 4. Restart init.sh from brew part
#
#
# 5. After running script:
#
# # Edit files for WLinux env
# $ vim $HOME/.profile
#
# $ echo "[ -f ~/.profile ] && source ~/.profile" >> ~/.bashrc
#

set -eux

## Install apt packages ##
sudo apt update -y && sudo apt install -y \
  build-essential \
  curl \
  file \
  git \
  libmysqlclient-dev \
  libpq-dev \
  libssl-dev \ # for ruby install
  make
exit 0


## Install brew fomula ##
brew install \
  anyenv \
  bat \
  ctags \
  direnv \
  fzf \
  git \
  htop \
  jq \
  neovim \
  tmux \
  tree \
  z


# dotfiles #
if [ ! -d "$HOME/src/gitlab.com/mmyoji/dotfiles" ]; then
  git clone git@gitlab.com:mmyoji/dotfiles.git $HOME/src/gitlab.com/mmyoji/dotfiles
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
#   - Set prompt setting to WLinux specific
[ -e ~/.profile ]         || cp $HOME/src/gitlab.com/mmyoji/dotfiles/.profile-brew ~/.profile

