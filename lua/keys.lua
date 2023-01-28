local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 'f', [[:NvimTreeFocus]], {})
map('n', 'tf', [[:NvimTreeFindFile]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
