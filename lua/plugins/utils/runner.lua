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

return {
  {
    "stevearc/overseer.nvim",
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction ",
      "OverseerClearCache",
    },
    keys = {
      "<leader>ror",
      "<leader>rot",
      "<leader>roa",
      "<leader>roc",
      "<leader>roi",
      "<leader>robs",
      "<leader>robd",
      "<leader>robl",
    },
    opts = {},
    config = function()
      local overseer = require("overseer")
      overseer.setup({
        strategy = {
          "toggleterm",
          direction = "horizontal",
          autoscroll = true,
          open_on_start = true,
          close_on_exit = false,
        },
        templates = { "builtin" },
      })

      overseer_keys()

      -- overseer.new_task({
      --
      -- })
    end,
  },
}
