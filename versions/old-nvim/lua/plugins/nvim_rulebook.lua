-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/chrisgrieser/nvim-rulebook
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  -- lazy.nvim
  {
    "chrisgrieser/nvim-rulebook",
    keys = {
      {
        "<leader>cRi",
        function()
          require("rulebook").ignoreRule()
        end,
      },
      {
        "<leader>cRl",
        function()
          require("rulebook").lookupRule()
        end,
      },
    },
  },
  "chrisgrieser/nvim-rulebook",
}
