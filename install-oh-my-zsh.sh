#!/bin/bash

# see https://github.com/robbyrussell/oh-my-zsh

cd ~

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set theme to ys
sed -i -E 's/ZSH_THEME=.*/ZSH_THEME="ys"/g' .zshrc