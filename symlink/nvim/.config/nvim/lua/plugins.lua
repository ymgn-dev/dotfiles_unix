vim.cmd[[packadd packer.nvim]]

local packer = nil
local function init()
  if packer == nil then
    packer = require 'packer'
    packer.init { disable_commands = true }
  end

  local use = packer.use
  packer.reset()

  use {'wbthomason/packer.nvim', opt = true}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter'}, {'kyazdani42/nvim-web-devicons'} }
  }
end

local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end,
})

return plugins