-- DON'T Use spaces instead of tabs
vim.opt_local.expandtab = false

-- TeX-only: mini.surround custom LaTeX commands

local cfg = vim.b.minisurround_config or {}
cfg.custom_surroundings = cfg.custom_surroundings or {}

local function cmd_surround(cmd)
  return {
    -- Match \cmd{ ... } and capture the inside
    input = { ("\\" .. cmd .. "{().-()}") },
    output = { left = ("\\" .. cmd .. "{"), right = "}" },
  }
end

cfg.custom_surroundings.e = cmd_surround("emph") -- gsae  -> \emph{...}
cfg.custom_surroundings.b = cmd_surround("textbf") -- gsab  -> \textbf{...}
cfg.custom_surroundings.i = cmd_surround("textit") -- gsai  -> \textit{...}
cfg.custom_surroundings.t = cmd_surround("texttt") -- gsat  -> \texttt{...}

-- keep your quotes too
cfg.custom_surroundings.q = {
  input = { "``().-()''" },
  output = { left = "``", right = "''" },
}

vim.b.minisurround_config = cfg
