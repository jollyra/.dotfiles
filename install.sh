#!/bin/bash

echo "Installing dotfiles"

echo "Found the following dotfiles"
dotfiles_dir="$HOME/dev/.dotfiles"
for file in `ls -A $dotfiles_dir/*`; do
  echo "Linking $file"
  ln -s $entry "$PWD/tst"
done

# Set git user
[ -z `git config --global user.name` ] && git config --global user.name "Nigel"
[ -z `git config --global user.email` ] && git config --global user.email "me@nigelrahkola.com"
