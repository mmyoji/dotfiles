setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history

alias ll="ls -la"
alias tmux="tmux -u"
alias vim="nvim"


## git-completion ##
fpath=(~/.zsh/completion $fpath)
autoload -U compinit
compinit -u


# https://github.com/junegunn/fzf/wiki/examples#changing-directory
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
    -o -type d -print 2> /dev/null | fzf +m) && \
  cd "$dir"
}


## anyenv ##
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"


## direnv ##
eval "$(direnv hook $SHELL)"


export GOPATH=$HOME

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# depends on: mysql@5.7 of homebrew
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

export EDITOR=vim

# http://excid3.com/blog/how-to-fix-esc-in-your-terminal
export LESS="-eirMX"

# for neovim
export XDG_CONFIG_HOME="$HOME/.config"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
