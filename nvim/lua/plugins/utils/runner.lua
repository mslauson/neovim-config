local wk = require("which-key")

local overseer_keys = function()
  local keys = {
    r = {
      o = {
        name = "Overseer ⌛",
        r = { ":OverseerRun<CR>", "Run" },
        t = { ":OverseerTaskAction<CR>", "Task Action" },
        a = { ":OverseerQuickAction<CR>", "Quick Action" },
        c = { ":OverseerRunCmd<CR>", "Run Command" },
        i = { ":OverseerInfo<CR>", "Info" },
        b = {
          name = "Bundle",
          s = { ":OverseerSaveBundle<CR>", "Save Bundle" },
          d = { ":OverseerDeleteBundle<CR>", "Delete Bundle" },
          l = { ":OverseerLoadBundle<CR>", "Load Bundle" },
        },
      },
    },
  }

  wk.register(keys, { prefix = "<leader>" })
end

local compiler_keys = function()
  local keys = {
    r = {
      c = {
        name = "Compiler ",
        o = { ":CompilerOpen<CR>", "Open" },
        t = { ":CompilerToggleResults<CR>", "Toggle Results" },
        r = { ":CompilerRedo<CR>", "Redo" },
        s = { ":CompilerStop<CR>", "Stop" },
      },
    },
  }

  wk.register(keys, { prefix = "<leader>" })
end

compiler_keys()

return {
  -- {
  --   "stevearc/overseer.nvim",
  --   cmd = {
  --     "OverseerOpen",
  --     "OverseerClose",
  --     "OverseerToggle",
  --     "OverseerSaveBundle",
  --     "OverseerLoadBundle",
  --     "OverseerDeleteBundle",
  --     "OverseerRunCmd",
  --     "OverseerRun",
  --     "OverseerInfo",
  --     "OverseerBuild",
  --     "OverseerQuickAction",
  --     "OverseerTaskAction ",
  --     "OverseerClearCache",
  --   },
  --   keys = {
  --     "<leader>ror",
  --     "<leader>rot",
  --     "<leader>roa",
  --     "<leader>roc",
  --     "<leader>roi",
  --     "<leader>robs",
  --     "<leader>robd",
  --     "<leader>robl",
  --   },
  --   opts = {},
  --   config = function()
  --     local overseer = require("overseer")
  --     overseer.setup({
  --       strategy = {
  --         "toggleterm",
  --         direction = "horizontal",
  --         autoscroll = true,
  --         open_on_start = true,
  --         close_on_exit = false,
  --       },
  --       templates = { "builtin" },
  --     })
  --
  --     overseer_keys()
  --
  --     -- overseer.new_task({
  --     --
  --     -- })
  --   end,
  -- },
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim" },
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
