local telescope = require("telescope")
return {

  {
    "piersolenski/telescope-import.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = { { "<leader>fi", "<cmd>Telescope import<CR>", desc = "Import" } },
    extensions = { "js", "ts", "lua" },
    config = function()
      telescope.setup({

        import = {
          insert_at_top = true,
        },
      })
      require("telescope").load_extension("import")
    end,
  },
  {
    "LukasPietzschmann/telescope-tabs",
    dependencies = { "nvim-telescope/telescope.nvim" },
    cmd = "Telescope telescope-tabs",
    keys = {
      {
        "<leader>ft",
        -- "<cmd>Telescope telescope-tabs list_tabs<CR>",
        -- desc = "Find Symbols",
      },
      config = function()
        require("telescope-tabs").setup({
          -- Your custom config :^)
        })
      end,
    },
  },
  {
    "lpoto/telescope-tasks.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      telescope.setup({
        extensions = {
          tasks = {
            output = {
              style = "tab", -- "split" | "float" | "tab"
              layout = "center", -- "left" | "right" | "center" | "below" | "above"
              scale = 0.4, -- output window to editor size ratio
            },
          },
        },
      })
      telescope.load_extension("tasks")
      local default_tasks = telescope.extensions.tasks.generators.default
      default_tasks.all()
      require("plugins.tasks.spring")
      require("plugins.tasks.dart")
    end,

    keys = {
      {
        "<leader>rl",
        "<cmd>Telescope tasks<CR>",
        desc = "List Tasks",
      },
    },
  },
  {
    "tsakirist/telescope-lazy.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      telescope.load_extension("lazy")
    end,
    keys = {
      {
        "<leader>fl",
        "<cmd>Telescope lazy<CR>",
        desc = "Lazy 💤",
      },
    },
  },
  {
    "nvim-telescope/telescope-media-files.nvim",
    dependencies = { "nvim-lua/popup.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      telescope.setup({
        extensions = {
          media_files = {
            -- filetypes whitelist
            filetypes = { "png", "webp", "jpg", "jpeg", "svg", "pdf", "mp4", "webm" },
            find_cmd = "rg",
          },
        },
      })
      telescope.load_extension("media_files")
    end,
    keys = {
      {
        "<leader>fm",
        "<cmd>Telescope media_files<CR>",
        desc = "Media Files",
      },
    },
  },
  {
    "LinArcX/telescope-ports.nvim",
    dependencies = { "rcarriga/nvim-notify", "nvim-telescope/telescope.nvim" },
    config = function()
      telescope.load_extension("ports")
    end,
    keys = {
      {
        "<leader>fP",
        "<cmd>Telescope ports<CR>",
        desc = "Commands",
      },
    },
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    build = "make",
    config = function()
      telescope.setup({
        extensions = {
          fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          },
        },
      })
      telescope.load_extension("fzf")
    end,
    keys = {
      {
        "<leader>fM",
        "<cmd>Telescope media_files<CR>",
        desc = "Media Files",
      },
    },
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require("telescope").load_extension("frecency")
    end,
    dependencies = { "kkharji/sqlite.lua", "nvim-telescope/telescope.nvim" },
    keys = {
      {
        "<leader>foa",
        "<cmd>Telescope frecency<CR>",
        desc = "All",
      },
      {
        "<leader>fob",
        "<cmd>Telescope frecency workspace=CWD<CR>",
        desc = "Workspace",
      },
    },
  },
  {
    "nvim-telescope/telescope-symbols.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = { { "<leader>fs", "<cmd>Telescope symbols<CR>", desc = "Find Symbols" } },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
