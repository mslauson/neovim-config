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
