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
    { "<leader>Oo", "<cmd>ObsidianOpen ", desc = "Open Note" },
    { "<leader>Onn", "<cmd>ObsidianNew ", desc = "New Note" },
    { "<leader>Oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick Switch" },
    { "<leader>Olf", "<cmd>ObsidianFollowLink<cr>", desc = "Follow Link" },
    { "<leader>Olb", "<cmd>ObsidianBacklinks<cr>", desc = "All references to current buffer" },
    { "<leader>Oll", "<cmd>ObsidianLinks<cr>", desc = "All links in current buffer" },
    { "<leader>Oln", "<cmd>ObsidianLinkNew ", desc = "Link to visual selection" },
    { "<leader>Olh", "<cmd>ObsidianFollowLink hsplit<cr>", desc = "Follow Link Horizontal Split -" },
    { "<leader>Olv", "<cmd>ObsidianFollowLink vsplit<cr>", desc = "Follow Link Vertical Split |" },

    { "<leader>Odt", "<cmd>ObsidianToday<cr>", desc = "Open Today's Daily" },
    { "<leader>Odo", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's Daily" },
    { "<leader>Ody", "<cmd>ObsidianTomorrow<cr>", desc = "Open Tomorrow's Daily" },
    { "<leader>Odd", "<cmd>ObsidianDailies ", desc = "Open Tomorrow's Daily" },

    { "<leader>Ot", "<cmd>ObsidianTags ", desc = "Search for all occurrences of given tags" },
    { "<leader>OTo", "<cmd>ObsidianTemplate ", desc = "Open Template" },
    { "<leader>OTn", "<cmd>ObsidianNewFromTemplate ", desc = "Create new note from given template" },
    { "<leader>Oen", "<cmd>ObsidianExtractNote ", desc = "Extract new note and create link" },

    { "<leader>Oct", "<cmd>ObsidianToggleCheckbox ", desc = "Toggle Checkbox Options" },
    { "<leader>Or", "<cmd>ObsidianRename ", desc = "Rename file with given name" },
    { "<leader>Opi", "<cmd>ObsidianPasteImage ", desc = "Paste image file (Req Name)" },

    { "<leader>Ow", "<cmd>ObsidianWorkspace ", desc = "Switch Workspace (Req Arg)" },
  },
}
