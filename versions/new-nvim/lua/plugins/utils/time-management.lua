return {
  "epwalsh/pomo.nvim",
  version = "*", -- Recommended, use latest release instead of latest commit
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  opts = {
    sessions = {
      twoSessions = {
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "25m" },
        { name = "Long Break", duration = "15m" },
      },
      GFSD = {
        { name = "Work", duration = "55m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "55m" },
        { name = "Short Break", duration = "5m" },
        { name = "Work", duration = "55m" },
        { name = "Long Break", duration = "15m" },
      },
    },
  },
}
