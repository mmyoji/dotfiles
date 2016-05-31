# mmyoji's dotfiles

## Content

* .emacs.d
* .vimrc
* .eslintrc: static analysis for JavaScript
* .gemrc: Gem config file
* .gitconfig
* .railsrc: config for `rails new` command
* .tmux.conf
* .tmuxp: tmux management tool config files
  * need to install `pip` and `pip install tmuxp`
  * then start with `tmuxp load <file_name>.yaml`


## Install

```sh
$ cd ~/path/to/install

$ git clone git@github.com:mmyoji/dotfiles.git

$ cd

# create symbolic links
$ ln -s ./path/to/install/dotfiles/.emacs.d ~/
```

:relieved:
