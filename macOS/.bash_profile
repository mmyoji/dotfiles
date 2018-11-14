for file in ~/.profile.d/*
do
  source $file
done

# for neovim
export XDG_CONFIG_HOME="$HOME/.config"
