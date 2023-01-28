require('plugins')
require('vars')         -- Variables
--require('opts')         -- Options
require('keys')
require('debug')
require('lualine').setup({
  options = { theme = 'auto' }
})

require('nvim-tree').setup({})
require('nvim-autopairs').setup({})
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>

