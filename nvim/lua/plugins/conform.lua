return {

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        -- javascript = { { "prettierd", "prettier" } },
        go = { "golines" },
        java = { "google-java-format" },
        rust = { "rustfmt" },
        xml = { "xmlformat" },
        templ = { "templ" },
        ["*"] = { "codespell" },
      },
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 500,
      },
      format_after_save = {
        lsp_fallback = true,
      },
    },
  },
}
