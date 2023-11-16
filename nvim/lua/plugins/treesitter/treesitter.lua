local parsers = {
  "bash",
  "c",
  "cmake",
  "cpp",
  "css",
  "dart",
  "dockerfile",
  "go",
  "godot_resource",
  "gomod",
  "gosum",
  -- "gotmpl",
  "gowork",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "html",
  "http",
  "java",
  "javascript",
  "json",
  "jsdoc",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "regex",
  "rust",
  "sql",
  "scss",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "vue",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    module = true,
    event = { "BufReadPost", "BufNewFile" },
    cmd = {
      "TSInstall",
      "TSInstallInfo",
      "TSUpdate",
      "TSBufEnable",
      "TSBufDisable",
      "TSEnable",
      "TSDisable",
      "TSModuleInfo",
    },
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
      },
      { "windwp/nvim-ts-autotag" },
      {
        "vrischmann/tree-sitter-templ",
        config = function()
          require("tree-sitter-templ").setup({})
        end,
      },
    },
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = parsers,
        highlight = {
          enable = true, -- false will disable the whole extension
          disable = "", -- list of language that will be disabled
        },
        context_commentstring = {
          enable = true,
        },
        autotag = {
          enable = true,
        },
        autopairs = {
          enable = true,
        },
        indent = { enable = true, disable = {
          "dart",
        } },
        auto_install = true,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = vim.fn.join(parsers, ","),
        callback = function()
          vim.opt_local.foldexpr = "nvim_treesitter#foldexpr()"
          vim.opt_local.foldmethod = "expr"
        end,
        desc = "Set fold method for treesitter",
      })

      -- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      -- parser_config.gotmpl = {
      -- 	install_info = {
      -- 		url = "https://github.com/ngalaiko/tree-sitter-go-template",
      -- 		files = { "src/parser.c" },
      -- 	},
      -- 	filetype = "gotmpl",
      -- 	used_by = { "gohtmltmpl", "gotexttmpl", "gotmpl", "yaml" },
      -- }
      local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      treesitter_parser_config.templ = {
        install_info = {
          url = "https://github.com/vrischmann/tree-sitter-templ.git",
          files = { "src/parser.c", "src/scanner.c" },
          branch = "master",
        },
      }

      vim.treesitter.language.register("templ", "templ")
    end,
  },
}
