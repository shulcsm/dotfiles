-- In ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  -- Add a new color scheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000, -- Make sure it loads first
    opts = {
      -- Theme customization options here
    },
  },

  -- Set as default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
