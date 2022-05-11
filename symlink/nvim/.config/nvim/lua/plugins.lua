vim.cmd[[packadd packer.nvim]]

local packer = nil
local function init()
  if packer == nil then
    packer = require 'packer'
    packer.init { disable_commands = true }
  end

  local use = packer.use
  packer.reset()

  use { 'wbthomason/packer.nvim', opt = true }
  use 'nvim-treesitter/nvim-treesitter'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd('colorscheme nightfox')
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup()
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
    config = function()
      require('nvim-tree').setup{}
    end
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = {
      'kyazdani42/nvim-web-devicons'
    },
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup{}
    end
  }
end

local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end,
})

return plugins