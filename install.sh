#!/bin/bash

# Link vimrc
ln -s $(pwd)/vimrc ~/.vimrc

# Install Plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Plugins
vim -c 'PlugInstall' -c 'qa!'

# Link openbox if openbox installed
if command -v openbox
then
  mkdir -p ~/.config
  ln -s $(pwd)/openbox/ ~/.config/openbox
fi
