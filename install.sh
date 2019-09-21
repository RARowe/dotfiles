#!/bin/bash

# Link vimrc
ln -s $(pwd)/vimrc ~/.vimrc

# Link openbox if openbox installed
if command -v openbox
then
  mkdir -p ~/.config
  ln -s $(pwd)/openbox/ ~/.config/openbox
fi
