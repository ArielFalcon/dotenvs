return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      transparent_background = true,
      flavour = "mocha",
    },
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = false,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
  },
  {
    "miikanissi/modus-themes.nvim",
    name = "modus",
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
      transparent = true,
      theme = "dragon",
      overrides = function(colors)
        local theme = colors.theme
        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  { "rose-pine/neovim", name = "rose-pine" },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  { "rktjmp/lush.nvim", dependencies = { "mcchrish/zenbones.nvim" } },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        transparent_mode = true, -- Activar fondo transparente
        contrast = "hard", -- Contraste "hard" como en Everforest
        overrides = {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          NormalDark = { fg = "#928374", bg = "#282828" },

          LazyNormal = { bg = "#32302f", fg = "#d4be98" },
          MasonNormal = { bg = "#32302f", fg = "#d4be98" },

          TelescopeTitle = { fg = "#fabd2f", bold = true },
          TelescopePromptNormal = { bg = "#3c3836" },
          TelescopePromptBorder = { fg = "#3c3836", bg = "#3c3836" },
          TelescopeResultsNormal = { fg = "#d4be98", bg = "#282828" },
          TelescopeResultsBorder = { fg = "#282828", bg = "#282828" },
          TelescopePreviewNormal = { bg = "#3c3836" },
          TelescopePreviewBorder = { bg = "#3c3836", fg = "#3c3836" },

          Pmenu = { fg = "#d4be98", bg = "#3c3836" },
          PmenuSel = { fg = "NONE", bg = "#504945" },
          PmenuSbar = { bg = "#3c3836" },
          PmenuThumb = { bg = "#504945" },
        },
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  { "NTBBloodbath/doom-one.nvim", name = "doom-one" },
  { "AhmedAbdulrahman/aylin.vim", name = "aylin" },
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    config = function()
      require("everforest").setup({
        background = "hard",
        italis = true,
        -- transparent_background_level = 1,
        diagnostic_text_highlight = true,
        diagnostic_virtual_text = "coloured",
        colours_override = function(palette)
          palette.bg0 = "#1A1A22"
        end,
      })
    end,
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- change this line to change the color scheme
      colorscheme = "gruvbox",
    },
  },
}
