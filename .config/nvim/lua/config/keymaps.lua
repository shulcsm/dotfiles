-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Normal mode mappings
vim.api.nvim_set_keymap("n", "<Left>", ':echoe "Use h"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Right>", ':echoe "Use l"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Up>", ':echoe "Use k"<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Down>", ':echoe "Use j"<CR>', { noremap = true })

-- Insert mode mappings
vim.api.nvim_set_keymap("i", "<Left>", '<ESC>:echoe "Use h"<CR>', { noremap = true })
vim.api.nvim_set_keymap("i", "<Right>", '<ESC>:echoe "Use l"<CR>', { noremap = true })
vim.api.nvim_set_keymap("i", "<Up>", '<ESC>:echoe "Use k"<CR>', { noremap = true })
vim.api.nvim_set_keymap("i", "<Down>", '<ESC>:echoe "Use j"<CR>', { noremap = true })
