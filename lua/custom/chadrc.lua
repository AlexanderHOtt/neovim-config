local M = {}

-- TODO: Add plugins
-- - [x] https://github.com/tpope/vim-fugitive
-- - [ ] https://github.com/rcarriga/nvim-dap-ui
--
-- TODO: Add keymaps
-- - [ ] nvim dap
--
-- TODO: Add terminal repls
--
-- TODO: Add autocmds

local override = require "custom.override"

M.options = {
   user = function()
      vim.opt.relativenumber = true
   end,
}

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
      statusline = {
         seperator_style = "arrow",
      },
      telescope = { "terms", "themes", "projects" },
   },
   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["akinsho/bufferline.nvim"] = override.bufferline,
      ["NvChad/nvterm"] = override.nvterm,
      ["max397574/better-escape.nvim"] = override.better_escape,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
      ["NvChad/nvim-colorizer.lua"] = override.colorizer,
      ["ray-x/lsp_signature.nvim"] = override.signature,
      ["lewis6991/gitsigns.nvim"] = override.gitsigns,
      ["feline-nvim/feline.nvim"] = override.statusline,
      ["nvim-telescope/telescope.nvim"] = override.telescope,
   },

   user = require "custom.plugins",
}

M.mappings = require "custom.mappings"

return M
