## I also have default config settings above these.

alias pbcopy='xsel --clipboard --input'
alias vim="nvim"

### git-completion
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source $HOME/git-completion.bash
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source $HOME/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

# Original
# PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
PROMPT_DIRTRIM=2
PS1='\[\033[32m\]\u:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

### Added by the Heroku Toolbelt
# https://devcenter.heroku.com/articles/heroku-cli#debian-ubuntu
export PATH="/usr/local/heroku/bin:$PATH"

# https://github.com/junegunn/fzf#using-git
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/mmyoji/google-cloud-sdk/path.bash.inc' ]; then source '/home/mmyoji/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/mmyoji/google-cloud-sdk/completion.bash.inc' ]; then source '/home/mmyoji/google-cloud-sdk/completion.bash.inc'; fi

# direnv
eval "$(direnv hook bash)"
