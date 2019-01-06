# dotfiles

## Install

```sh
$ cd ~/path/to/install

$ git clone git@github.com:mmyoji/dotfiles.git

$ cd $HOME

# create symbolic links
$ ln -s ~/path/to/dotfiles/.gemrc ~/
```

## load `.profile` from `.bashrc`

```
# .bashrc

[ -f ~/.profile ] && source ~/.profile
```

:relieved:
