return {
  {
    "mslauson/tmux-panes.nvim",
    config = function()
      require("tmux-panes").setup()
    end,
    cmd = {
      "TmuxSplitVertical",
      "TmuxSplitHorizontal",
    },
    keys = {
      { "<leader>-", ":TmuxSplitVertical", desc = "New tmux vertical split at buffer CWD" },
      { "<leader>\\", ":TmuxSplitVertical", desc = "New tmux horizontal split at buffer CWD" },
    },
    {
      "christoomey/vim-tmux-navigator",
      lazy = false,
      cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
      },
      keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
      },
    },
  },
}
