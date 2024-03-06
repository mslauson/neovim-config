return {

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        javascript = { "eslint_d", "prettierd" },
        go = { "gofmt", "golines" },
        java = { "google-java-format" },
        json = { "fixjson" },
        md = { "markdown-toc" },
        nix = { "nixpkg_fmt", "nixfmt" },
        rust = { "rustfmt" },
        typescript = { "eslint_d", "prettierd" },
        templ = { "templ" },
        vue = { "eslint_d", "prettierd" },
        xml = { "xmlformat" },
        ["*"] = { "codespell" },
      },
    },
  },
}
