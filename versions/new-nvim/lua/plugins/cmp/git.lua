return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "Dosx001/cmp-commit" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      cmp.setup.filetype("gitcommit", {
        sources = {
          { name = "commit" },
        },
      })
    end,
  },
}
