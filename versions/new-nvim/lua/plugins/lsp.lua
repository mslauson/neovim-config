return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        lemminx = {},
        groovyls = {},
        gradle_ls = {},
        helm_ls = {},
        jinja_lsp = {},
      },
      setup = {
        gradle_ls = {
          settings = {
            gradleWrapperEnabled = true,
          },
          groovyls = {
            settings = {
              groovy = {
                configureOnOpen = true,
                configureOnType = true,
              },
            },
          },
          helm_ls = {
            settings = {
              helm = {
                kubeconfig = "~/.kube/config",
              },
            },
          },
        },
      },
    },
  },
}
