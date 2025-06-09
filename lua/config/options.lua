-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"

-- set it on a per file basis
-- vim.opt.expandtab = false -- Use spaces instead of tabs
vim.opt.tabstop = 4 -- Number of spaces tabs count for
vim.opt.shiftwidth = 4 -- Size of an indent

vim.opt.scrolloff = 7 -- Lines of context; high value keep the cursor centered vertically in the screen

-- In case you don't want to use `:LazyExtras`,
-- then you need to set the option below.
vim.g.lazyvim_picker = "telescope"

-- Custom location of spell file
vim.opt.spellfile = vim.fn.expand("~/work/spell/en.utf-8.add")

-- vim.g.vimtex_view_method = "zathura_simple"
vim.g.vimtex_view_method = "sioyek"

-- Enable line wrap
vim.opt.wrap = true

-- Disable Copilot blink completions and use it through ghost text
vim.g.ai_cmp = false
