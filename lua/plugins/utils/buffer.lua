return {
  {
    "gaborvecsei/memento.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local wk = require("which-key")
      wk.register({
        b = {
          h = {
            name = "History",
            t = { ":lua require('memento').toggle()<cr>", "Toggle" },
            c = { ":lua require('memento').clear_history()<cr>", "Clear History" },
          },
        },
      }, opts)
    end,
  },
}
