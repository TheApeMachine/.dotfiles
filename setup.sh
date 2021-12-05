#!/bin/bash

mv ~/.zshrc ~/dotfiles/backup/
mv ~/.config/nvim/init.vim ~/dotfiles/backup/
mv ~/.tmux.conf ~/dotfiles/backup/

git add . && git commit -m "Latest Backup" && git push

ln -sv ~/dotfiles/.zshrc ~/.zshrc
ln -sv ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -sv ~/dotfiles/.tmux.conf ~/.tmux.conf
