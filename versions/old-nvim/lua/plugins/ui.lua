return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
      stages = "fade_in_slide_out",
      fps = 60,
      top_down = false,
    },
  },
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
  {
    "tiagovla/scope.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    cmd = {
      "ScopeList",
      "ScopeLoadState",
      "ScopeMoveBuf",
      "ScopeSaveState",
    },
    config = function()
      -- init.lua
      require("scope").setup({})
    end,
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bcr", "<Cmd>BufferLineCloseRight<CR>", desc = "Close All Buffers To The Right" },
      { "<leader>bcl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Close All Buffers To The Left" },
      { "<leader>bco", "<Cmd>BufferLineCloseOthers<CR>", desc = "Close All Other Buffers" },
      { "<leader>bse", "<Cmd>BufferLineSortByExtension<CR>", desc = "Sort By Extension" },
      { "<leader>bsd", "<Cmd>BufferLineSortByDirectory<CR>", desc = "Sort By Directory" },
      { "<leader>bsd", "<Cmd>BufferLineSortByTabs<CR>", desc = "Sort By Tabs" },
    },
  },
}
