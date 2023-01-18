DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

if [ `check_os` = $OS_MAC ]; then
    export PATH=$HOME/.pub-cache/bin:$PATH
    export PATH=$HOME/fvm/default/bin:$PATH
    export PATH=/opt/homebrew/opt/openjdk@11/bin:$PATH
    export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
fi

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

HISTFILE=$HOME/.zsh_history
HISTSIZE=100

SAVEHIST=1000

setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt auto_cd
setopt no_beep

autoload -Uz colors && colors

zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
