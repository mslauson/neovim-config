return {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {
      },
      cmd = "Telescope",
      build = "make",
      config = function()
        local telescope = require("telescope")
        -- local fb_actions = require("telescope._extensions.file_browser.actions")

        telescope.setup({
          pickers = {
            find_files = {
              hidden = true,
            },
            project_files = {
              hidden = true,
            },
            -- symbols = {
            --   sources = { "emoji", "kaomoji", "gitmoji" },
            -- },
          },
        })

      end,
      keys = {
        {
          "<leader>fp",
          function()
            require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
          end,
          desc = "Find Project ",
        },
        -- git
        {
          "<leader>gb",
          "<cmd>Telescope git_branches<CR>",
          desc = "Branches ",
        },
        {
          "<leader>gS",
          "<cmd>Telescope git_stash<CR>",
          desc = "Stash",
        },
        {
          "<leader>gBc",
          "<cmd>Telescope git_bcommits<CR>",
          desc = "Commits",
        },

        --code
        {
          "<leader>ct",
          "<cmd>Telescope treesitter<CR>",
          desc = "Search Treesitter",
        },
        {
          "<leader>cxa",
          "<cmd>Telescope diagnostics<CR>",
          desc = "All",
        },
        {
          "<leader>cxb",
          "<cmd>Telescope diagnostics bufnr=0<CR>",
          desc = "Buffer",
        },
        {
          "<leader>ct",
          "<cmd>Telescope treesitter<CR>",
          desc = "Search Treesitter",
        },
        {
          "<leader>fql",
          "<cmd>Telescope quickfix<CR>",
          desc = "List",
        },
        {
          "<leader>fqh",
          "<cmd>Telescope quickfixhistory<CR>",
          desc = "List",
        },

        --spelling
        {
          "Mf",
          "<cmd>Telescope spell_suggest<CR>",
          desc = "Spelling Suggestions",
        },

        --Jumps
        {
          "<leader>fj",
          "<cmd>Telescope jumplist<CR>",
          desc = "Jump List",
        },
        --Commands
        {
          "<leader>fC",
          "<cmd>Telescope commands<CR>",
          desc = "Commands",
        },
        --System

        --history
        {
          "<leader>fhc",
          "<cmd>Telescope command_history<CR>",
          desc = "Command",
        },
        {
          "<leader>fhs",
          "<cmd>Telescope search_history<CR>",
          desc = "Search",
        },

        --help
        {
          "<leader>fH",
          "<cmd>Telescope man_pages<CR>",
          desc = "Help",
        },
      },
      -- change some options
      opts = {
        defaults = {
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          winblend = 0,
        },
      },
    },
}
