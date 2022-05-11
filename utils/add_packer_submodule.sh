#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR/../

REPO_URL="https://github.com/wbthomason/packer.nvim"
# TARGET_PATH="symlink/nvim/.local/share/nvim/site/pack/packer/start/packer.nvim"
TARGET_PATH="symlink/nvim/.local/share/nvim/site/pack/packer/opt/packer.nvim"

git submodule add $REPO_URL $TARGET_PATH