#!/bin/bash

echo "Installing dotfiles"

echo "Found the following dotfiles"
dotfiles_dir="$HOME/dev/.dotfiles"
for entry in $dotfiles_dir/*
do
  echo "Linking $entry"
  ln -s $entry "$PWD/tst"
done
