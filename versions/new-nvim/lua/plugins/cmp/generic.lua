return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji", "uga-rosa/cmp-dictionary" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "calc" })
      table.insert(opts.sources, { name = "dictionary" })
    end,
  },
}
