vim.g.material_style = "darker"

require('material').setup({
    italics = {
        comments = true, -- Enable italic comments
        keywords = true, -- Enable italic keywords
        functions = false, -- Enable italic functions
        strings = false, -- Enable italic strings
        variables = false-- Enable italic variables
    },

    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
    async_loading = true, -- Load parts of the theme asyncronously for faster startup
})

vim.cmd[[colorscheme material]]

--require('onedark').setup {
--    style = 'deep'
--}

--require('onedark').load()
