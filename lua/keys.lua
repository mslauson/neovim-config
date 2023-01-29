local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 'f', [[:NvimTreeFocus]], {})
map('n', 'tf', [[:NvimTreeFindFile]], {})
map('n', 'tg', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', 'tn', [[:FloatermNew]], {})
map('n', 'tt', [[:FloatermToggle]], {})
map('n', 't]', [[:FloatermNext]], {})
map('n', 't[', [[:FloatermPrev]])
