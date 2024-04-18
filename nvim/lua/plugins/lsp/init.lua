local utils = require("utils")
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    optional = true,
    opts = {
      setup = {
        ["sts4"] = {},
        -- ["templ "] = {},
        ["groovyls"] = {},
        -- ["rnix-lsp"] = {},
      },
    },
  },
}
