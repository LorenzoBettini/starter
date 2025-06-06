return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add parsers, without replacing the default ones
    vim.list_extend(opts.ensure_installed, {
      "java",
      "editorconfig",
      "dockerfile",
      "bibtex",
      "latex",
      "properties",
      "git_config",
    })
  end,
}
