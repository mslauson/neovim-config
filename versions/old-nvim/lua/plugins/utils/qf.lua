return {
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    dependencies = {
      {
        "junegunn/fzf",
        build = function()
          vim.fn["fzf#install"]()
        end,
      },
      { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
    },
  },
}
