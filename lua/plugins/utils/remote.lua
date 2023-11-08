return {
  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.3",
    config = function()
      require("distant"):setup()
    end,
    cmd = {
    "Distant",
    "DistantCancelSearch",
    "DistantCheckHealth",
    "DistantCheckVersion",
    "DistantConnect",
    "DistantCopy",
    "DistantInstall",
    "DistantLaunch",
    "DistantMetadata",
    "DistantMkdir",
    "DistantOpen",
    "DistantRemove",
    "DistantRename",
    "DistantRun",
    "DistantSearch",
    "DistantSessionInfo",
    "DistantShell",
    "DistantSpawn",
    "DistantSystemInfo",
    }
  },
  { "kiran94/s3edit.nvim", config = true, cmd = "S3Edit" },
}
