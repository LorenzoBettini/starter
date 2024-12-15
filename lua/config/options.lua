-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"

vim.opt.expandtab = false -- Use spaces instead of tabs

vim.opt.scrolloff = 999 -- Lines of context; high value keep the cursor centered vertically in the screen

-- In case you don't want to use `:LazyExtras`,
-- then you need to set the option below.
vim.g.lazyvim_picker = "telescope"
