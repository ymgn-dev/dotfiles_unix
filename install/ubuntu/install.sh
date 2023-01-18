local DOTFILES_DIR=${HOME}/dotfiles
. ${DOTFILES_DIR}/utils/utils.sh

sudo apt install curl git
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
source ${HOME}/.zshrc

# asdf
# https://github.com/asdf-vm/asdf-nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 19.0.1
asdf global nodejs 19.0.1
corepack enable
asdf reshim nodejs
