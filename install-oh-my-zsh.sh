#!/bin/bash

# see https://github.com/robbyrussell/oh-my-zsh

# install oh-my-zsh
export TERM='xterm'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set theme to ys
echo "Set zsh theme to 'ys'"
sed -i -E 's/ZSH_THEME=.*/ZSH_THEME="ys"/g' ~/.zshrc

# add plugins
echo "Adding plugins: history colorize colored-man-pages common-aliases dircycle sudo"
sed -i -E 's/plugins=.*/plugins=\(git history colorize colored-man-pages common-aliases dircycle sudo\)/g' ~/.zshrc

# Add custom configuration
echo "source .zsh_custom" >> ~/.zshrc