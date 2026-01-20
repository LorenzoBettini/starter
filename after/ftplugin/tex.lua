-- DON'T Use spaces instead of tabs
vim.opt_local.expandtab = false

-- TeX-only: mini.surround custom LaTeX quotes on `q` => `` ... ''
local cfg = vim.b.minisurround_config or {}
cfg.custom_surroundings = cfg.custom_surroundings or {}

cfg.custom_surroundings.q = {
  input = { "``().-()''" },
  output = { left = "``", right = "''" },
}

vim.b.minisurround_config = cfg
