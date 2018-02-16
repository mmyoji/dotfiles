# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export HISTCONTROL=ignoreboth:erasedups

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "(rbenv init -)" > /dev/null 2>&1

export EDITOR=vim

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# https://golang.org/doc/install?download=go1.7.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

# http://excid3.com/blog/how-to-fix-esc-in-your-terminal
export LESS="-eirMX"

alias lc='colorls -a'

export PATH="$HOME/.cargo/bin:$PATH"
