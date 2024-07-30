-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymaps = vim.keymap.set
local all_modes_no_i_t = { "n", "v", "x" }
local non_editing_modes = { "n", "v", "x" }
local modes_i_v = { "i", "v" }
local all_modes = { "i", "n", "t", "v", "x" }

set_keymaps("i", "jk", "<ESC>", { desc = "Remap ESC" })

set_keymaps(all_modes_no_i_t, "U", "<C-r>", { desc = "Undo" })

-- my editor commands

-- dublications
set_keymaps(non_editing_modes, "<leader>,d", "V:'<,'>t'><cr>", { desc = "Duplicate Line" })

-- substitute
set_keymaps({ "n", "t", "x" }, "<leader>,s", ":%s/", { desc = "File Substitute" })
set_keymaps({ "v" }, "<leader>,s", ":%s/", { desc = "Visual Substitute" })

-- todo make the equvakebt for closing things
set_keymaps(all_modes_no_i_t, "Myc", "yt{", { desc = "Yank To Curly '{'" })
set_keymaps(all_modes_no_i_t, "Myp", "yt(", { desc = "Yank To Parenthesis '('" })

set_keymaps(all_modes_no_i_t, "Mdc", "dt{", { desc = "Delete To Curly '{'" })
set_keymaps(all_modes_no_i_t, "Mdp", "dt(", { desc = "Delete To Parenthesis '('" })
