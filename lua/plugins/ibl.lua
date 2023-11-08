return {
  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
      "HiPhish/rainbow-delimiters.nvim",
    },
    config = function()
      vim.opt.list = true
      -- vim.opt.listchars:append("space:⋅")
      -- vim.opt.listchars:append("eol:¶")
      -- vim.opt.listchars:append("tab:|⇢")
      -- vim.opt.listchars:append("trail:·")
      -- vim.opt.listchars:append("extends:>")
      -- vim.opt.listchars:append("precedes:<")

      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require("ibl").setup({
        indent = {
          highlight = highlight,
          char = "│",
          tab_char = "│",
        },
        scope = {
          show_start = false,
          show_end = false,
          injected_languages = true,
          highlight = highlight,
          priority = 1024,
          include = {
            node_type = {
              ["*"] = {
                "arguments",
                "block",
                "bracket",
                "declaration",
                "expression_list",
                "field",
                "for",
                "func_literal",
                "function",
                "if",
                "import",
                "list",
                "return_statement",
                "short_var_declaration",
                "switch_body",
                "try",
                "type",
              },
            },
          },
        },
      })
    end,
  },
}
