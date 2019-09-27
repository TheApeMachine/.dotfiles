#!/bin/bash

mv ~/.bash_profile ~/dotfiles/backup/bash_profile
mv ~/.zshrc ~/dotfiles/backup/zshrc
mv ~/.vimrc ~/dotfiles/backup/vimrc
mv ~/.tmux.conf ~/dotfiles/backup/tmux.conf

ln -sv ~/dotfiles/bash_profile ~/.bash_profile
ln -sv ~/dotfiles/zshrc ~/.zshrc
ln -sv ~/dotfiles/vimrc ~/.vimrc
ln -sv ~/dotfiles/tmux.conf ~/.tmux.conf
