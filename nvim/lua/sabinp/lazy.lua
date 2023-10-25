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
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme catppuccin-latte]])
  --   end
  -- },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd([[colorscheme tokyonight-day]])
    end
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
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
  'onsails/lspkind.nvim'
})
