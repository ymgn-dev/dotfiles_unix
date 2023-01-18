DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

if [ `check_os` = $OS_MAC ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
