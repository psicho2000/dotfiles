#!/bin/bash

# see https://github.com/robbyrussell/oh-my-zsh

# install oh-my-zsh
export TERM='xterm'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set theme to ys
echo "Set zsh theme to 'ys'"
sed -i -E 's/ZSH_THEME=.*/ZSH_THEME="ys"/g' ~/.zshrc

# add plugins
## WARNING - this sed multiline replacement is greedy. Sed does not support non greedy searching.
## If any other closing bracket ) will be added later to .zshrc, the sed replacement will not work anymore.
echo "Adding plugins: git history colorize colored-man-pages common-aliases dircycle sudo"
sed -n '1h;1!H;${;g;s/\nplugins=(.*)/\nplugins=(git history colorize colored-man-pages common-aliases dircycle sudo)/g;p;}' ~/.zshrc > ~/.zshrc-temp
mv -f ~/.zshrc-temp ~/.zshrc

# Add custom configuration
echo "source ~/.zsh_custom" >> ~/.zshrc