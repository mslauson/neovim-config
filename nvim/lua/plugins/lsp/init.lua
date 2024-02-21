local utils = require("utils")
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    optional = true,
    opts = {
      setup = {
        ["templ "] = {},
        ["groovyls"] = {},
        ["rnix-lsp"] = {},
      },
    },
  },
}
