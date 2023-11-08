local utils = require("utils")
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "dart")
      end
    end,
  },
  {
    "akinsho/flutter-tools.nvim",
    -- ft = "dart",
    opts = function()
      return {
        debugger = { enabled = true, run_via_dap = true, exception_breakpoints = {} },
        dev_log = { enabled = false, open_cmd = "tabedit" },
        decorations = {
          statusline = { device = true, app_version = true },
        },
        widget_guides = { enabled = true, debug = true },
        -- lsp = {
        --   capabilities = function(config)
        --     config.autostart = false
        --     return config
        --   end,
        -- },
      }
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      {
        "nvim-telescope/telescope.nvim",
        optional = true,
        opts = function()
          require("telescope").load_extension("flutter")
        end,
      },
    },
    keys = {
      { "<leader>cfo", ":FlutterOutlineToggle<cr>", "Outline Toggle" },
      { "<leader>cfc", ":Telescope flutter commands<cr>", "Commands" },
      { "<leader>cfd", ":FlutterDevices<cr>", "Devices" },
      { "<leader>cfe", ":FlutterEmulators<cr>", "Emulators" },
      { "<leader>cfq", ":FlutterQuit<cr>", "Quit" },
      { "<leader>cfg", ":FlutterPubGet<cr>", "Pub Get" },
      { "<leader>cfu", ":FlutterPubUpgrade<cr>", "Pub Upgrade" },
      { "<leader>rfr", ":FlutterRun<cr>", "  Run" },
      { "<leader>rfl", ":FlutterReload<cr>", " Reload" },
      { "<leader>rfs", ":FlutterRestart<cr>", " Restart" },
    },
  },
}
