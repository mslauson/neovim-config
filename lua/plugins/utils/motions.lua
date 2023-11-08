return {
  {
    "echasnovski/mini.jump2d",
    version = "*",
    enabled = false,
    config = function()
      require("mini.jump2d").setup({})
    end,
  },
  {
    "ThePrimeagen/harpoon",
    depdencencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension("harpoon")
    end,
    keys = {
      { "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add Mark" },
      { "<leader>hr", "<cmd>lua require('harpoon.mark').remove_file()<cr>", "Add Mark" },
      { "<leader>hq", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle Quick Menu" },
      { "<leader>ht", "<cmd>Telescope harpoon marks<cr>", "Telescope Marks" },
      { "[H", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", "Navigate To Previous Mark" },
      { "]H", "<cmd>lua require('harpoon.ui').nav_next()<cr>", "Navigate To Next Mark" },
    },
  },
}
