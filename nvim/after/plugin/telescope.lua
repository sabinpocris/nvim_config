-- Required depedencies
-- 1. sharkdp/fd          --> 'fd-find' package
-- 2. BurntSushi/ripgrep  --> 'ripgrep' package

-- Keybindings
vim.keymap.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>") 
vim.keymap.set('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>") 
vim.keymap.set('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>") 

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
    defaults = {
        layout_config = {
            horizontal = {
                preview_cutoff = 0,
            },
        },
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
