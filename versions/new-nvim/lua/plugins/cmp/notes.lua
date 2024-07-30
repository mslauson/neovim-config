return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "praczet/yaml-tags.nvim",
        config = function()
          require("yaml-tags").setup({
            sanitizer = true, -- Set to false to disable the sanitizer
          })
        end,
        dependencies = {
          "nvim-telescope/telescope.nvim", -- for file and tag search
        },
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts) end,
  },
}
