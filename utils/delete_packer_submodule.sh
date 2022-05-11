#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"
cd $SCRIPT_DIR/../

REPO_URL="https://github.com/wbthomason/packer.nvim"
TARGET_PATH="symlink/nvim/.local/share/nvim/site/pack/packer/start/packer.nvim"
MODULE_PATH=".git/modules/symlink/nvim"

git submodule deinit -f $TARGET_PATH
git rm -f $TARGET_PATH
rm -rf $MODULE_PATH