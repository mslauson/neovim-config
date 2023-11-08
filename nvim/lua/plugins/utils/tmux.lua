return {
  {
    "alexghergh/nvim-tmux-navigation",
    lazy = false,
    config = function()
      require("nvim-tmux-navigation").setup({
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
          left = "<c-h>",
          down = "<c-j>",
          up = "<c-k>",
          right = "<c-l>",
          last_active = "<c-\\>",
          next = "<c-space>",
        },
      })
    end,
  },
}
