return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji", "uga-rosa/cmp-dictionary", "SergioRibera/cmp-dotenv" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "calc" })
      table.insert(opts.sources, { name = "dictionary" })
      table.insert(opts.sources, { name = "dotenv" })
    end,
  },
}
