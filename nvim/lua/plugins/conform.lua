return {

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        javascript = { "eslint", "prettier" },
        go = { "gofmt", "golines", "golines" },
        java = { "google-java-format" },
        rust = { "rustfmt" },
        typescript = { "eslint", "prettier" },
        templ = { "templ" },
        vue = { "eslint", "prettier" },
        xml = { "xmlformat" },
        ["*"] = { "codespell" },
      },
    },
  },
}
