alias tmux="tmux -u"
alias vim="nvim"


# If starship is not good for me, restore the following propmt setting!
# ## git prompt settings ##
#
# # Load useful modules
# autoload -Uz vcs_info
# precmd() { vcs_info }
# autoload -Uz colors
# colors
#
# # Format the vcs_info_msg_0_ variable
# zstyle ':vcs_info:git:*' formats "@${fg[red]}%b %c%u${reset_color}"
# zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:git:*' stagedstr "+"
# zstyle ':vcs_info:git:*' unstagedstr "-"
#
# # Set up the prompt (with git branch name)
# setopt PROMPT_SUBST
# PROMPT='${${fg[green]}}%n${reset_color}:${fg[cyan]}${PWD/#$HOME/~}${reset_color} ${vcs_info_msg_0_}'$'\n''$ '


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
eval "$(anyenv init -)"


## direnv ##
eval "$(direnv hook bash)"


export GOPATH=$HOME

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR=vim
export HISTCONTROL=ignoreboth:erasedups

# http://excid3.com/blog/how-to-fix-esc-in-your-terminal
export LESS="-eirMX"

# for neovim
export XDG_CONFIG_HOME="$HOME/.config"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"
