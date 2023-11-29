local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct


require("lazy").setup({
  -- Telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
      -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Treesitter
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- Themes
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000 ,
    -- config = function()
      -- require("gruvbox").setup({
        -- contrast = "hard",
      -- });
      -- vim.o.background = "dark"
      -- vim.cmd([[colorscheme gruvbox]])
    -- end
  },

  {
    "navarasu/onedark.nvim",
    config = function ()
      require('onedark').setup ({
        -- Main options --
        style = 'deep', -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = false,  -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true,   -- use undercurl instead of underline for diagnostics
          background = true,    -- use background color for virtual text
        },
      })
      require('onedark').load()
    end
  },

  -- {
  --   'shaunsingh/nord.nvim'
  -- },

  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     vim.cmd([[colorscheme tokyonight-night]])
  --   end
  -- },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    -- dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  },

  'mbbill/undotree',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'numToStr/Comment.nvim',

  -- LSP
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',

  -- Icons for nvim-cmp
  'onsails/lspkind.nvim',

  -- Nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = {
        enabled = false,
      }
    }
  },

})
