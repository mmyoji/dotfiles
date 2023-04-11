# Setup instruction for macOS

```sh
# 1. Install Xcode CLI tools:
$ xcode-select --install

# 2. Install Homebrew:
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 3. Generate ssh key:
$ ssh-keygen -t ed25519 -C mmyoji@MBP2021

# 4. Register ssh public key on GitLab & GitHub

# 5. Fetch this repo:
$ git clone git@github.com:mmyoji/dotfiles.git $HOME/dev/dotfiles

# 6. Execute this file:
$ bash ~/dev/dotfiles/macOS/init.sh

# 7. Additional instructions:
# Install fzf useful commands
# YOU DON'T NEED TO OVERWRITE .zshrc (it's already there!)
$ $(brew --prefix)/opt/fzf/install

# Init anyenv (use rtx instead)
# $ rtx install nodejs@18

# 8. Install apps:
#   - Bitwarden
#   - Google Chrome
#   - iTerm2
#   - VSCode
#   - etc.

# 9. Add VSCode settings files
$ cp ~/dev/dotfiles/macOS/vscode/*.json $HOME/Library/Application\ Support/Code/User/
```
