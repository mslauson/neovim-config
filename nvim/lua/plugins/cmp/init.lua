return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "hrsh7th/cmp-cmdline",
      },
      {
        "hrsh7th/cmp-buffer",
      },
      {
        "andersevenrud/cmp-tmux",
      },
      {
        "tamago324/cmp-zsh",
      },
      {
        "amarakon/nvim-cmp-fonts",
      },
      {
        "KadoBOT/cmp-plugins",
        config = function()
          require("cmp-plugins").setup({
            files = { ".*\\.lua" }, -- default
            -- files = { "plugins.lua", "some_path/plugins/" } -- Recommended: use static filenames or partial paths
          })
        end,
      },
      { "onsails/lspkind.nvim" },
    },
    event = { "BufReadPre" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      -- require("codeium").setup({})
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      -- `/` cmdline setup.
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- `:` cmdline setup.
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })

      ---@param opts cmp.ConfigSchema
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "emoji" },
        { name = "zsh" },

        { name = "plugins" },
        { name = "conventionalcommits" },
        { name = "buffer" },
      }))

      -- opts.formatting = vim.tbl_extend("force", opts.formatting, {
      --   format = require("lspkind").cmp_format({
      --     mode = "symbol",
      --     maxwidth = 50,
      --     ellipsis_char = "...",
      --     symbol_map = { Codeium = "" },
      --   }),
      -- })
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- this way you will only jump inside the snippet region
            -- elseif luasnip.expand_or_jumpable() then
            -- luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
            -- elseif luasnip.jumpable(-1) then
            -- luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<C-x>"] = cmp.mapping.abort(),
      })
    end,
  },
}
