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
source $HOME/git-completion.bash



### prompt ###

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $HOME/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

# Original
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
PROMPT_DIRTRIM=2
PS1='\[\033[32m\]\u:\[\033[36m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '



### other configurations ###

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

