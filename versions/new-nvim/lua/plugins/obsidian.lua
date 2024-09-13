return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "~/vaults/work",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    notes_subdir = "notes",
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "notes/dailies",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "daily.md",
    },
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
  },
  keys = {
    { "<leader>ono", "<cmd>ObsidianOpen ", desc = "Open Note" },
    { "<leader>onn", "<cmd>ObsidianNew ", desc = "New Note" },
    { "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch" },
    { "<leader>olf", "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link" },
    { "<leader>olb", "<cmd>ObsidianBacklinks<cr>", desc = "All references to current buffer" },
    { "<leader>oll", "<cmd>ObsidianLinks<cr>", desc = "All links in current buffer" },
    { "<leader>oln", "<cmd>ObsidianLinkNew ", desc = "Extract new note and create link" },
    { "<leader>olh", "<cmd>ObsidianFollowLink hsplit<cr>", desc = "Follow Link Horizontal Split -" },
    { "<leader>olv", "<cmd>ObsidianFollowLink vsplit<cr>", desc = "Follow Link Vertical Split |" },

    { "<leader>odt", "<cmd>ObsidianToday<cr>", desc = "Open Today's Daily" },
    { "<leader>odo", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's Daily" },
    { "<leader>ody", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's Daily" },
    { "<leader>odd", "<cmd>ObsidianDailies ", desc = "Open Tomorrow's Daily" },

    { "<leader>ot", "<cmd>ObsidianTags ", desc = "Search for all occurrences of given tags" },
    { "<leader>oT", "<cmd>ObsidianTemplate ", desc = "Open Template" },
    {}
  },
}
