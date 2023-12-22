-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set_keymaps = vim.keymap.set

local all_modes = { "n", "i", "t", "v", "x" }
local all_modes_no_i = { "n", "t", "v", "x" }
local modes_n_v = { "n", "v", "x" }
local visual_modes = { "v", "x" }
local Util = require("lazyvim.util")

local set_keymaps_list = function(keymaps, mode)
  local opt = { silent = true }

  if mode == "c" then
    opt = { expr = true }
  end

  for keymap, value in pairs(keymaps) do
    if value.desc ~= nil then
      opt = vim.tbl_extend("force", opt, { desc = value.desc })
      vim.keymap.set(mode, keymap, value.cmd, opt)
    else
      vim.keymap.set(mode, keymap, value.cmd, opt)
    end
  end
end

set_keymaps(
  all_modes_no_i,
  "<leader>\\",
  ":lua require('utils.zj').new_vertical()<cr>",
  { desc = "Split Window Vertical" }
)

set_keymaps(
  all_modes_no_i,
  "<leader>|",
  ":lua require('utils.zj').new_horizontal()<cr>",
  { desc = "Split Window Horizontal" }
)

set_keymaps(
  all_modes_no_i,
  "<leader>=",
  ":lua require('utils.zj').new_floating()<cr>",
  { desc = "Split Window Horizontal" }
)

set_keymaps(all_modes_no_i, "<leader>ft", ":Telescope telescope-tabs list_tabs<cr>", { desc = "Tabs", remap = true })

set_keymaps(all_modes_no_i, "U", "<C-r>", { desc = "Undo" })
set_keymaps(all_modes_no_i, "Mx", "V:'<,'>t'><cr>", { desc = "Duplicate Line" })
set_keymaps(
  all_modes_no_i,
  "MX",
  ":lua duplicate_and_append_blank_line()",
  { desc = "Duplicate Line and Add Blank Line Above" }
)
set_keymaps({ "n", "t", "x" }, "Ms", ":%s/", { desc = "Global Substitute" })
set_keymaps(all_modes_no_i, "Mcs", ":%s/@+/", { desc = "Global Substitute Clipboard" })
set_keymaps({ "n", "t", "x" }, "MS", ":%S/", { desc = "Global Subvert" })
set_keymaps({ "v" }, "Ms", ":s/", { desc = "Global Substitute" })
set_keymaps({ "n", "t", "x" }, "MS", ":%S/", { desc = "Global Subvert" })
set_keymaps({ "v" }, "Ms", ":s/", { desc = "Global Substitute" })
set_keymaps({ "v" }, "MS", ":S/", { desc = "Global Subvert" })
set_keymaps(all_modes_no_i, "McS", ":%S/@+/", { desc = "Global Subvert Clipboard" })
set_keymaps(all_modes_no_i, "Mp", ":put<cr>", { desc = "Paste On New Line Below" })
set_keymaps(all_modes_no_i, "MP", ":put!<cr>", { desc = "Paste On New Line Above" })

set_keymaps(all_modes_no_i, "Myc", "yt{", { desc = "Yank To Curly '{'" })
set_keymaps(all_modes_no_i, "Myp", "yt(", { desc = "Yank To Parenthesis '('" })

set_keymaps(all_modes_no_i, "Mdc", "dt{", { desc = "Delete To Curly '{'" })
set_keymaps(all_modes_no_i, "Mdp", "dt(", { desc = "Delete To Parenthesis '('" })

set_keymaps(all_modes_no_i, "<leader>fx", ":TodoTelescope<cr>", { desc = "Save Buffer" })
set_keymaps(all_modes, "<C-s>", "<Esc>:w<cr>", { desc = "Save Buffer" })
set_keymaps(all_modes, "<C-Q>", "<Esc>:wqa<cr>", { desc = "Save All Buffers And Quit" })
set_keymaps(all_modes, "<C-j>", "<C-w>j", { desc = "Go To Upper Window" })
set_keymaps(all_modes, "<C-k>", "<C-w>k", { desc = "Go To Lower Window" })
set_keymaps(all_modes, "<C-h>", "<C-w>h", { desc = "Go To Left Window" })
set_keymaps(all_modes, "<C-l>", "<C-w>l", { desc = "Go To Right Window" })
set_keymaps(all_modes, "<C-Up>", ":resize +10<CR>", { desc = "Add size at the top" })
set_keymaps(all_modes, "<C-Down>", ":resize -10<CR>", { desc = "Add size at the bottom" })
set_keymaps(all_modes, "<C-Left>", ":vertical resize +10<CR>", { desc = "Add size at the left" })
set_keymaps(all_modes, "<C-Right>", ":vertical resize -10<CR>", { desc = "Add size at the right" })
set_keymaps(all_modes_no_i, "<leader>fc", ":TodoTelescope<cr>", { desc = "Telescope Todos" })
set_keymaps(all_modes_no_i, "<leader>fm", ":Telescope marks<cr>", { desc = "Telescope Marks" })
set_keymaps(all_modes_no_i, "<leader>rh", ":!firefox %<CR>", { desc = "Open HTML File In Firefox " })

-- c mods
set_keymaps(modes_n_v, "c", '"_c', { desc = "Change Without Cut" })
set_keymaps(modes_n_v, "cx", "c", { desc = "Change With Cut" })
set_keymaps(modes_n_v, "cc", '"_cc', { desc = "Change Without Cut" })
set_keymaps(modes_n_v, "ccx", "cc", { desc = "Change With Cut" })
set_keymaps(modes_n_v, "C", '"_C', { desc = "Change Without Cut" })
set_keymaps(modes_n_v, "Cx", "C", { desc = "Change With Cut" })

-- d mods
set_keymaps(modes_n_v, "d", '"_d', { desc = "Delete Without cut" })
set_keymaps(modes_n_v, "dx", "d", { desc = "Delete With cut" })
set_keymaps(modes_n_v, "dd", '"_dd', { desc = "Delete Without cut" })
set_keymaps(modes_n_v, "ddx", "dd", { desc = "Delete With cut" })
set_keymaps(modes_n_v, "D", '"_D', { desc = "Delete Without cut" })
set_keymaps(modes_n_v, "Dx", "D", { desc = "Delete With cut" })

-- set_keymaps({"n"}, "'", "Telescope marks", { desc = "Delete With cut" })

set_keymaps({ "n" }, "<leader>.", function()
  require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
end, { desc = "Toggle comment line" })

set_keymaps(
  visual_modes,
  "<leader>.",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = "Toggle comment line" }
)

local fn = vim.fn

local modes = {
  normal_mode = "n",
  insert_mode = "i",
  terminal_mode = "t",
  visual_mode = "v",
  visual_block_mode = "x",
  command_mode = "c",
}

local function close()
  if vim.bo.buftype == "terminal" then
    vim.cmd([[
    Bdelete!
    silent! close
    ]])
  elseif #vim.api.nvim_list_wins() > 1 then
    vim.cmd("silent! close")
  else
    vim.notify("Can't Close Window", vim.log.levels.WARN, { title = "Close Window" })
  end
end

local function forward_search()
  if fn.getcmdtype() == "/" or fn.getcmdtype() == "?" then
    return "<CR>/<C-r>/"
  end
  return "<C-z>"
end

local function backward_search()
  if fn.getcmdtype() == "/" or fn.getcmdtype() == "?" then
    return "<CR>?<C-r>/"
  end
  return "<S-Tab>"
end

local keymaps = {
  normal_mode = {

    ["H"] = {
      cmd = ":bprevious<CR>",
      desc = "Go to previous buffer",
    },
    ["L"] = {
      cmd = ":bnext<CR>",
      desc = "Go to next buffer",
    },

    ["<Left>"] = {
      cmd = ":tabprevious<CR>",
      desc = "Go to previous tab",
    },
    ["<Right>"] = {
      cmd = ":tabnext<CR>",
      desc = "Go to next tab",
    },
    ["<"] = {
      cmd = "<<",
      desc = "Indent backward",
    },
    [">"] = {
      cmd = ">>",
      desc = "Indent forward",
    },

    ["<A-j>"] = {
      cmd = ":m .+1<CR>==",
      desc = "Move the line up",
    },
    ["<A-k>"] = {
      cmd = ":m .-2<CR>==",
      desc = "Move the line down",
    },
    ["[l"] = {
      cmd = "`^",
      desc = "Move to last insert",
    },

    ["[lj"] = {
      cmd = "`^",
      desc = "Move to last insert",
    },
    --block select

    ["bc"] = {
      cmd = "VaB",
      desc = "Block Select {}",
    },
    ["bp"] = {
      cmd = "Vab",
      desc = "Block Select ()",
    },
    ["bs"] = {
      cmd = "Va[",
      desc = "Block Select []",
    },

    ["sx"] = {
      cmd = "Va<",
      desc = "Block Select []",
    },

    --block yank

    ["bcy"] = {
      cmd = "VaBVy",
      desc = "Block Yank {}",
    },
    ["bpy"] = {
      cmd = "VabVy",
      desc = "Block Yank ()",
    },
    ["bsy"] = {
      cmd = "Va[Vy",
      desc = "Block Yank []",
    },

    ["bxy"] = {
      cmd = "Va<Vy",
      desc = "Block Yank <>",
    },

    --block cut

    ["bcx"] = {
      cmd = "VaBVx",
      desc = "Block Cut {}",
    },
    ["bpx"] = {
      cmd = "VabVx",
      desc = "Block Cut ()",
    },
    ["bsx"] = {
      cmd = "Va[Vx",
      desc = "Block Cut []",
    },
    ["bxx"] = {
      cmd = "Va<Vx",
      desc = "Block Cut <>",
    },

    --block delete

    ["bcd"] = {
      cmd = "VaBVd",
      desc = "Block Delete {}",
    },
    ["bpd"] = {
      cmd = "VabVd",
      desc = "Block Delete ()",
    },
    ["bsd"] = {
      cmd = "Va[Vd",
      desc = "Block Delete []",
    },
    ["bxd"] = {
      cmd = "Va<Vd",
      desc = "Block Delete <>",
    },
  },
  insert_mode = {
    ["jk"] = {
      cmd = "<Esc>",
      desc = "Exit insert mode",
    },

    ["jj"] = {
      cmd = "<Esc>",
      desc = "Exit insert mode",
    },

    ["<C-s>"] = {
      cmd = "<Esc>:w<cr>",
      desc = "Save File",
    },
    ["<C-Q>"] = {
      cmd = "<Esc>:waq<cr>",
      desc = "Save All buffs And quit                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    File",
    },

    ["<A-j>"] = {
      cmd = "<Esc>:m .+1<CR>==gi",
      desc = "Move the line up",
    },
    ["<A-k>"] = {
      cmd = "<Esc>:m .-2<CR>==gi",
      desc = "Move the line down",
    },
  },
  terminal_mode = {

    --["<Esc>"] = {
    --  cmd = "<C-\\><C-n>",
    --  desc = "Enter insert mode",
    --},
  },
  visual_mode = {

    ["p"] = {
      cmd = '"_dP',
      desc = "Better Paste",
    },
  },
  visual_block_mode = {},
  command_mode = {

    ["<Tab>"] = {
      cmd = forward_search,
      desc = "Word Search Increment",
    },
    ["<S-Tab>"] = {
      cmd = backward_search,
      desc = "Word Search Decrement",
    },
  },
  apps = {

    ["<leader>ak"] = {
      cmd = function()
        Util.float_term({ "k9s" }, { esc_esc = false, ctrl_hjkl = false })
      end,
      desc = "K9s - Kubernetes TUI 󱃾 ",
    },
    ["<leader>aj"] = {
      cmd = function()
        Util.float_term({ "jiraG" }, { esc_esc = false, ctrl_hjkl = false })
      end,
      desc = "Jira TUI 󰌃 - Global Team ",
    },
    ["<leader>am"] = {
      cmd = function()
        Util.float_term({ "neomutt" }, { esc_esc = false, ctrl_hjkl = false })
      end,
      desc = "Neomutt ✉️",
    },
  },
}

set_keymaps_list(keymaps.normal_mode, modes.normal_mode)
set_keymaps_list(keymaps.insert_mode, modes.insert_mode)
set_keymaps_list(keymaps.terminal_mode, modes.terminal_mode)
set_keymaps_list(keymaps.visual_mode, modes.visual_mode)
set_keymaps_list(keymaps.visual_block_mode, modes.visual_block_mode)
set_keymaps_list(keymaps.command_mode, modes.command_mode)
set_keymaps_list(keymaps.apps, modes.normal_mode)

local function duplicate_and_append_blank_line()
  vim.cmd("V:'<,'>t'>")
  vim.cmd("normal! '<O<Esc>")
end
