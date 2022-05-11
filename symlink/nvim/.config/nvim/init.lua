-- TODO(ymgn9314): 整理する
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

vim.wo.number = true
vim.o.number = true
vim.bo.expandtab = true
vim.bo.smartindent = true
vim.bo.tabstop = 4
vim.bo.syntax = 'on'
vim.o.softtabstop = 4
vim.o.textwidth = 80
vim.o.wrapmargin = 80
vim.o.guifont = 'Hack Nerd Font:h14'
vim.o.clipboard = 'unnamedplus'

-- Plugins
require('plugins')

-- https://qiita.com/delphinus/items/8160d884d415d7425fcc#22-packernvim-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%A8%E6%9C%80%E4%BD%8E%E9%99%90%E3%81%AE%E8%A8%AD%E5%AE%9A
vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

-- https://github.com/wbthomason/dotfiles/blob/linux/neovim/.config/nvim/init.lua#L100
vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
