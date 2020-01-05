# Setup instruction for macOS

```sh
# 1. Install Xcode CLI tools:
$ xcode-select --install

# 2. Install Homebrew:
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 3. Generate ssh key:
$ ssh-keygen -t ed25519

# 4. Register ssh public key on GitLab & GitHub

# 5. Fetch this repo:
$ git clone git@gitlab.com:mmyoji/dotfiles.git $HOME/src/gitlab.com/mmyoji/dotfiles

# 6. Execute this file:
$ bash ~/src/gitlab.com/mmyoji/dotfiles/macOS/init.sh

# 7. Additional instructions:
# Install fzf useful commands
# YOU DON'T NEED TO OVERWRITE .zshrc (it's already there!)
$ $(brew --prefix)/opt/fzf/install

# Init anyenv
# and install necessary *envs: goenv, nodenv, etc.
$ anyenv init

# 8. Install some apps:
#   - 1Password
#   - Google Chrome
#   - iTerm2
#   - Slack
#   - VSCode
#   - Discord
#   - Firefox
#   - etc.
```
