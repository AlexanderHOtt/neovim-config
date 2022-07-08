return {
   -- New
   ["p00f/nvim-ts-rainbow"] = { -- rainbow brackets
      after = "nvim-treesitter",
   },
   ["JoosepAlviste/nvim-ts-context-commentstring"] = { -- correct comments inside of jsx code
      after = "nvim-treesitter",
   },

   ["jose-elias-alvarez/null-ls.nvim"] = { -- extensive formatting and diagnostics
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },
   -- Doesn't work with LspInstaller
   -- ["andreadev-it/shade.nvim"] = { -- dim unactive windows
   --    -- module = "shade",
   --    config = function()
   --       require("shade").setup {
   --          overlay_opacity = 80,
   --          opacity_step = 1,
   --          exclude_filetypes = { "NvimTree", "lsp-installer" },
   --       }
   --    end,
   -- },
   -- ["andymass/vim-matchup"] = {
   --    opt = true,
   --    setup = function()
   --       require "vim-matchup"
   --    end,
   -- },
   ["mlaursen/vim-react-snippets"] = {},
   ["ahmedkhalf/project.nvim"] = {
      -- after = "telescope.nvim",
      config = function()
         require "custom.plugins.project"
      end,
   },
   ["mfussenegger/nvim-dap"] = {
      config = function()
         require "custom.plugins.dap"
      end,
   },
   ["tpope/vim-fugitive"] = {},
   ["max397574/better-escape.nvim"] = {
      config = function()
         require("better_escape").setup {
            mapping = { "jk", "kj" }, -- a table with mappings to use
            timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
            clear_empty_lines = false, -- clear line after escaping if there is only whitespace
            keys = "<Esc>", -- keys used for escaping, if it is a function will use the result every time
         }
      end,
   },
   ["simrat39/symbols-outline.nvim"] = {},

   -- Already installed
   ["goolord/alpha-nvim"] = { -- start screen
      disable = false,
      config = function()
         require "custom.plugins.alpha"
      end,
   },
}
