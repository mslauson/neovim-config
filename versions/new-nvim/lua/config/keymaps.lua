-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymaps = vim.keymap.set
local all_modes_no_i = { "n", "t", "v", "x" }
local all_modes = { "i", "n", "t", "v", "x" }

set_keymaps("i", "jk", "<ESC>", { desc = "Remap ESC" })

set_keymaps(all_modes_no_i, "U", "<C-r>", { desc = "Undo" })

-- my editor commands

-- dublications
set_keymaps(all_modes_no_i, "Mx", "V:'<,'>t'><cr>", { desc = "Duplicate Line" })

-- substitute
set_keymaps({ "n", "t", "x" }, "<leader>,s", ":%s/", { desc = "File Substitute" })
set_keymaps({ "v" }, "<leader>,s", ":%s/", { desc = "Visual Substitute" })

-- todo make the equvakebt for closing things
set_keymaps(all_modes_no_i, "Myc", "yt{", { desc = "Yank To Curly '{'" })
set_keymaps(all_modes_no_i, "Myp", "yt(", { desc = "Yank To Parenthesis '('" })

set_keymaps(all_modes_no_i, "Mdc", "dt{", { desc = "Delete To Curly '{'" })
set_keymaps(all_modes_no_i, "Mdp", "dt(", { desc = "Delete To Parenthesis '('" })
