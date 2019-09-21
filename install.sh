#!/bin/bash

# Link vimrc
ln -s $(pwd)/vimrc ~/.vimrc

# Link openbox if openbox installed
if type "openbox" > /dev/null
then
  mkdir -p ~/.config
  ln -s $(pwd)/openbox/ ~/.config/openbox
fi
