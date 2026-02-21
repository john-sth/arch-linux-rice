
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Shatur/neovim-ayu"},

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu-mirage",
    },
  }
}
