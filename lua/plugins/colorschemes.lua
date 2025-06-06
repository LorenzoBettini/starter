return {
  { "ellisonleao/gruvbox.nvim" },
  { "vague2k/vague.nvim" },
  { "navarasu/onedark.nvim", opts = { style = "dark" } },
  { "rebelot/kanagawa.nvim" },
  { "xero/miasma.nvim" },
  { "rose-pine/neovim" },
  {
    "neanias/everforest-nvim",
    -- Need to specify the "main" because of the non-standard name
    -- See https://github.com/LazyVim/LazyVim/discussions/4213#discussioncomment-13382728
    main = "everforest",
    lazy = false,
    opts = {
      background = "hard", -- "soft", "medium", "hard"
    },
  },
}
