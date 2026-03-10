return {

  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- add outline
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    keys = { { "<leader>cs", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
    opts = {},
  },

  -- remove inlay_hints from default
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        angularls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("angular.json", "project.json")(fname)
          end,
        },
      },
    },
  },
  {
    "wuelnerdotexe/vim-astro",
  },
}
