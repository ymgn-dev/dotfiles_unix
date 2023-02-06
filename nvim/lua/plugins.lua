vim.cmd.packadd "packer.nvim"

vim.cmd("colorscheme nightfox")

require("packer").startup(function()
  -- 起動時に読み込むプラグインは名前を書くだけです
  use "tpope/vim-fugitive"
  use "tpope/vim-repeat"

  use { "EdenEast/nightfox.nvim", opt = true }

  -- opt オプションを付けると遅延読み込みになります。
  -- この場合は opt だけで読み込む契機を指定していないため、
  -- packadd コマンドを叩かない限り読み込まれることはありません。
  use { "wbthomason/packer.nvim", opt = true }
  -- packer.nvim 自体を遅延読み込みにする理由はまた後ほど。
end)

