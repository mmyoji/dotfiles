# Setup instruction for macOS

```sh
# 1. Install Xcode CLI tools:
$ xcode-select --install

# 2. Install Homebrew:
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 3. Generate ssh key:
$ ssh-kegen -t ed25519

# 4. Register ssh public keys on GitLab and GitHub

# 5. Fetch this repo:
$ git clone git@gitlab.com:mmyoji/dotfiles.git $HOME/src/gitlab.com/mmyoji/dotfiles

# 6. Execute this file:
$ bash ~/src/gitlab.com/mmyoji/dotfiles/macOS/init.sh

# 7. Additional instructions:
# Install fzf useful commands
$ $(brew --prefix)/opt/fzf/install
```
