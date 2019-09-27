#!/bin/bash

echo "installing base system"
git submodule update --init --recursive

source install/link.sh

if [ "$(uname)" == "Darwin" ]; then
	echo "detected OSX"

	echo "installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	echo "brewing"
	source scripts/brew.sh

	echo "updating OSX settings"
	source install/osx.sh
fi

echo "creating vim dirs"
mkdir -p ~/.vim-tmp

if ! command_exists zsh; then
	echo "zsh not found. install zsh and then re-run install script"
	exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
	echo "configuring zsh as the default shell"
	chsh -s "$(command -v zsh)"
fi

echo "done, reload terminal!"
