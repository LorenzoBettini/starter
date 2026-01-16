-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.texlab = opts.servers.texlab or {}

      local s = opts.servers.texlab.settings or {}
      local t = s.texlab or {}
      local d = t.diagnostics or {}

      d.ignoredPatterns = d.ignoredPatterns or {}
      table.insert(d.ignoredPatterns, [[Underfull \\hbox]])

      t.diagnostics = d
      s.texlab = t
      opts.servers.texlab.settings = s
    end,
  },
}
