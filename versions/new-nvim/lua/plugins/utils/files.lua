return {
  {
    enabled = true,
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = false,
      buffers = {
        follow_current_file = {
          enable = true,
        },
      },
      filesystem = {
        follow_current_file = {
          enable = true,
        },
        -- source_selector = {
        --   winbar = false,
        --   statusline = false,
        -- },
        filtered_items = {
          visible = true,
        },
        open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
      },
    },
  },
}
