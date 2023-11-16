vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>ge", "$");
vim.keymap.set("n", "<leader>gb", "^");
vim.keymap.set("v", "<leader>ge", "$");
vim.keymap.set("v", "<leader>gb", "^");
