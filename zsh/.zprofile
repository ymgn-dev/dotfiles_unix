DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

if [ `check_os` = $OS_MAC ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # https://github.com/zdharma-continuum/zinit/issues/364
    # https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
    if command_exists brew; then
        FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
        autoload -Uz compinit
        compinit
    fi
fi
