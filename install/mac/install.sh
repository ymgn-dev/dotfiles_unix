#!/bin/zsh

DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

/usr/sbin/softwareupdate --install-rosetta --agree-to-license

if ! command_exists brew; then
	echo "Homebrew not found! Installing..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
source ${HOME}/.zshrc

if ! command_exists asdf; then
    echo "asdf not found! Installing..."
	brew install coreutils curl git
	brew install asdf
fi
source ${HOME}/.zshrc

brew bundle --file=${DOTFILES_DIR}/install/mac/Brewfile
source ${HOME}/.zshrc

chmod +x ${DOTFILES_DIR}/install/mac/install_packages.sh
sh ${DOTFILES_DIR}/install/mac/install_packages.sh

chmod +x ${DOTFILES_DIR}/install/mac/apply_defaults.sh
sh ${DOTFILES_DIR}/install/mac/apply_defaults.sh
