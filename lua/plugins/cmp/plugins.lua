local extend_cmp = function(cmp, src)
  cmp.config.sources(vim.list_extend(cmp.config.sources, {
    src,
  }))
end

return {
  -- {
  --   "David-Kunz/cmp-npm",
  --   dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" },
  --   ft = "json",
  --   config = function()
  --     require("cmp-npm").setup({})
  --     local cmp = require("cmp")
  --     extend_cmp(cmp, { name = "npm", keyword_length = 4 })
  --   end,
  -- },
  -- {
  --   "petertriho/cmp-git",
  --   dependencies = { "nvim-lua/plenary.nvim", "hrsh7th/nvim-cmp" },
  --   config = function()
  --     require("cmp_git").setup()
  --     local cmp = require("cmp")
  --     extend_cmp(cmp, { name = "git" })
  --   end,
  -- },
}
