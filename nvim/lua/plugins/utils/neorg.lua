return {
  {
    "nvim-neorg/neorg",
    enabled = false,
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim", "max397574/neorg-contexts", "phenax/neorg-hop-extras" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
          ["external.context"] = {},
          ["external.hop-extras"] = {},
        },
      })
    end,
  },
}
