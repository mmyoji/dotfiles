### aliases ###

alias ll="ls -la"
alias pbcopy='xsel --clipboard --input'
alias tmux="tmux -u"
alias vim="nvim"

# https://github.com/sharkdp/bat
alias cat="bat"



### completion ###

## git-completion ##
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
[ -f ~/git-completion.bash ] && source ~/git-completion.bash

## z ##
# https://github.com/rupa/z
[ -f ~/z.sh ] && source ~/z.sh



### prompt ###

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [ -f ~/git-prompt.sh ]; then
  source ~/git-prompt.sh

  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PS1_SHOWUNTRACKEDFILES=true
  GIT_PS1_SHOWSTASHSTATE=true
  GIT_PS1_SHOWUPSTREAM=auto
  # Original
  # PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
  PROMPT_DIRTRIM=2
  PS1='\[\033[32m\]\u:\[\033[36m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
fi



### functions ###

# https://github.com/junegunn/fzf/wiki/examples#changing-directory
# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
    -o -type d -print 2> /dev/null | fzf +m) && \
  cd "$dir"
}



### other configurations ###

## anyenv ##
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"


## direnv ##
eval "$(direnv hook bash)"


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

