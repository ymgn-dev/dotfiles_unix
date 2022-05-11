require('plugins')

-- https://qiita.com/delphinus/items/8160d884d415d7425fcc#22-packernvim-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%A8%E6%9C%80%E4%BD%8E%E9%99%90%E3%81%AE%E8%A8%AD%E5%AE%9A
vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

-- https://github.com/wbthomason/dotfiles/blob/linux/neovim/.config/nvim/init.lua#L100
vim.cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
vim.cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
vim.cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
vim.cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
vim.cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]
