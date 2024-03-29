return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {
          -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true,
        show_end_of_buffer = false, -- show the '~' characters after the end of buffers
        term_colors = false,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15,
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = false,
          bufferline = true,
          dap = {
            enabled = true,
            enable_ui = true, -- enable nvim-dap-ui
          },
          gitsigns = true,
          neotree = true,
          telescope = true,
          notify = true,
          mini = true,
          dashboard = true,
          dropbar = {
            enabled = true,
            color_mode = true,
          },
          indent_blankline = {
            enabled = true,
            -- scope_color = "peach", -- catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = true,
          },
          flash = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              information = { "undercurl" },
              warnings = { "undercurl" },
            },
          },
          navic = { enabled = true, custom_bg = "lualine" },
          beacon = true,
          markdown = true,
          mason = true,
          neogit = true,
          neotest = true,
          noice = true,
          treesitter = true,
          overseer = true,
          octo = true,
          which_key = true,
          lsp_trouble = true,
          semantic_tokens = true,
          illuminate = true,
        },
      })
    end,
  },
}
