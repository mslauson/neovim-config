local utils = require("utils")
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "vue")
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "codeqlls", "cssls" })
    end,
  },
}
-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       -- make sure mason installs the server
--       servers = {
--         codeqlls = {},
--       },
--       setup = {
--         codeqlls = {},
--       },
--     },
--   },
-- }
