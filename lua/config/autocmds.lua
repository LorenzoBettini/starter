-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Ensure that the binary spl file is up-to-date with the source add file
-- This is no longer needed since the add_file is in an external folder I synchronize
-- see the options.lua file: vim.opt.spellfile = vim.fn.expand("~/work/spell/en.utf-8.add")
-- If we still want this auto command, then the add_file can be retrieved like that:
-- local add_file = vim.opt.spellfile:get()[1]
-- local spl_mtime = vim.fn.getftime(spl_file)
-- vim.api.nvim_create_autocmd("FocusGained", {
--   pattern = "*",
--   callback = function()
--     local config_path = vim.fn.stdpath("config") -- Get Neovim's config path
--     local add_file = config_path .. "/spell/en.utf-8.add"
--     local spl_file = config_path .. "/spell/en.utf-8.add.spl"
--
--     if vim.fn.filereadable(add_file) == 1 then
--       local add_mtime = vim.fn.getftime(add_file) -- Get modification time of .add file
--       local spl_mtime = vim.fn.getftime(spl_file) -- Get modification time of .add.spl file
--
--       -- Run mkspell! only if .add is newer than .add.spl or .add.spl doesn't exist
--       if add_mtime > spl_mtime or spl_mtime == -1 then
--         vim.cmd("silent! mkspell! " .. spl_file .. " " .. add_file)
--       end
--     end
--   end,
-- })

-- Disable autoformat for bibtex files
-- See https://www.lazyvim.org/configuration/tips
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "bib" },
  callback = function()
    vim.b.autoformat = false
  end,
})
