return {
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    keys = { { "<leader>Fv", "<cmd>VimBeGood<CR>", desc = "Vim Be Good" } },
  },
  {
    "seandewar/killersheep.nvim",
    cmd = "KillKillKill",
    keys = { { "<leader>Fk", "<cmd>KillKillKill<CR>", desc = "Killer Sheep" } },
  },
  {
    "alec-gibson/nvim-tetris",
    cmd = "Tetris",
    keys = { { "<leader>Ft", "<cmd>Tetris<cr>", desc = "Tetris" } },
  },
  {
    "NStefan002/speedtyper.nvim",
    dependencies = { "stevearc/dressing.nvim" },
    cmd = "Speedtyper",
    keys = { { "<leader>Fs", "<cmd>Speedtyper<CR>", desc = "Speedtyper" } },
  },
  {
    "eandrju/cellular-automaton.nvim",
    keys = { { "<leader>Fcr", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "make_it_rain" } },
  },
}
