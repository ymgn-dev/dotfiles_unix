#!/bin/zsh

set -euC

local DOTFILES_DIR="$(cd $(dirname $0); pwd)"

cd ${DOTFILES_DIR}

# Load utils
. ./utils.sh

# ================================================
# (Mac only) Installing Rosseta 2
# ================================================
if [ `check_os` = $OS_MAC ]; then
	echo "Rosseta2 not found! Installing..."
	/usr/sbin/softwareupdate --install-rosetta --agree-to-license
fi

# ================================================
# (Mac only) Installing Homebrew
# ================================================
if [ `check_os` = $OS_MAC ] && ! command_exists brew; then
	echo "Homebrew not found! Installing..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ================================================
# (Both Mac and Ubuntu) Installing asdf
# ================================================
if ! command_exists asdf; then
	echo "asdf not found! Installing..."

	if [ `check_os` = $OS_MAC ]; then
		brew install coreutils curl git
		brew install asdf
	elif [ `check_os` = $OS_UBUNTU ]; then
		sudo apt install curl git
		git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
	fi

	source ~/.zshrc
fi

# ================================================
# (Mac only) Installing Brewfile
# ================================================
if [ `check_os` = $OS_MAC ]; then
	brew bundle --file=$DOTFILES_DIR/.brewfile
fi

# ================================================
# (Mac only) Initializing OS settings
# ================================================
if [ `check_os` = $OS_MAC ]; then
	. ./defaults.sh
	init_macos_settings
fi

# ツール・パッケージ類のインストール
sh $SHELL_DIR/package.sh
