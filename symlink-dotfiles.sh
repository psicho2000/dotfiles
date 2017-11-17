#!/bin/bash

dotfiles="$HOME/dotfiles"

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -f "$to"
  ln -s "$from" "$to"
}

if [[ -d "$dotfiles" ]]; then
  echo "Symlinking dotfiles from $dotfiles"
else
  echo "$dotfiles does not exist"
  exit 1
fi

cd $dotfiles

for location in $(find . -maxdepth 1 -type f -name '.*'); do
  if [[ $location != "./.gitignore" ]]; then
    file="${location##*/}"
    file="${file%.sh}"
    link "$dotfiles/$location" "$HOME/$file"
  fi
done

if [ ! -f ~/.custom ]; then
    echo "# Put custom commands specific to environment / server here" > ~/.custom
else
    echo ".custom already exists in home directory"
fi