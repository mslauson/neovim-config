-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymaps = vim.keymap.set

set_keymaps("i", "jk", "<ESC>", { desc = "Remap ESC" })

set_keymaps(all_modes_no_i, "U", "<C-r>", { desc = "Undo" })
