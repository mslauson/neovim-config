return {
  {
    "octarect/telescope-menu.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          menu = {
            default = {
              items = {
                -- You can add an item of menu in the form of { "<display>", "<command>" }
                { "Checkhealth", "checkhealth" },
                { "Show LSP Info", "LspInfo" },
                { "Restart LSP", "LspRestart" },
                { "Files", "Telescope find_files" },

                -- The above examples are syntax-sugars of the following;
                { display = "Change colorscheme", value = "Telescope colorscheme" },
              },
            },
            filetypes = {
              dart = {
                items = {
                  { "Flutter Run", "flutter run" },
                  { "Flutter Test", "flutter test" },
                  { "Flutter Format", "flutter format" },
                  { "Flutter Analyze", "flutter analyze" },
                  { "Flutter Clean", "flutter clean" },
                  { "Flutter Pub Get", "flutter pub get" },
                  { "Flutter Pub Upgrade", "flutter pub upgrade" },
                  { "Flutter Doctor", "flutter doctor" },
                },
              },
            },
          },
        },
      })
      telescope.load_extension("menu")
    end,
    keys = {
      {
        "<leader><leader>",
        "<cmd>Telescope menu<CR>",
        desc = "Open Menu ",
      },
    },
  },
}
