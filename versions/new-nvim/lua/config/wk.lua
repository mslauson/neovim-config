return {
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        [","] = {
          name = "Matt Cmds 󰈸",
          s = { name = "Substitute 󰯍" },
          c = { name = "Clipboard 📋" },
          y = { name = "Yank " },
          x = { name = "Duplicate " },
          d = { name = "Delete 󰺝" },
        },
        -- ["<leader>a"] = { name = "󱃺 Apps" },
        -- ["<leader>c"] = {
        name = "  Code",
        -- { x = { name = "Diagnostics  " }, f = { name = " Flutter" }, R = { name = "Rulebook" } },
        -- },
        ["<leader>o"] = {
          name = "Obsidian",
          {
            c = { name = "Checkbox" },
            e = { name = "Extract" },
            d = { name = "Daily" },
            l = { name = "Link" },
            n = { name = "New" },
            o = { name = "Open" },
            p = { name = "Paste" },
            t = { name = "Tags" },
            T = { name = "Templates" },
            w = { name = "Workspace" },
          },
        },
        ["<leader>r"] = { name = " Runner", f = { name = " Flutter" } },
        ["<leader>f"] = {
          name = "📁 Files/Find",
          o = { name = "Frecency 📈" },
          q = { name = "Quickfix" },
          h = { name = "History" },
        },
        ["<leader>g"] = { name = " Git", B = { name = "󰍛 Buffer" } },
        ["<leader>F"] = { name = "💥 Fun", c = { name = "Cellular Annimation" } },
      },
    },
  },
}
