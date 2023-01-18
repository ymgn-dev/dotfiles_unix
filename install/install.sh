#!/bin/zsh

set -euC

local DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

if [ `check_os` = $OS_MAC ]; then
	sh ${DOTFILES_DIR}/install/mac/install.sh
elif [ `check_os` - $OS_UBUNTU ]; then
	sh ${DOTFILES_DIR}/install/ubuntu/install.sh
fi
