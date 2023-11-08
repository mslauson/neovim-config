return {
  -- peeks buffers when searching etc
  {
    "nacro90/numb.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("numb").setup()
    end,
  },
  {
    "chrisgrieser/nvim-early-retirement",
    config = true,
    event = "VeryLazy",
  },
  {
    "NFrid/due.nvim",
    config = function()
      require("due_nvim").setup({})
    end,
  },
}
