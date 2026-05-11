-- Extend the default configuration for lspconfig. This is useful for adding additional servers or customizing existing ones without modifying the default configuration directly.
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.texlab = opts.servers.texlab or {}

      local s = opts.servers.texlab.settings or {}
      local t = s.texlab or {}
      local d = t.diagnostics or {}
      local e = t.experimental or {}

      -- Customize diagnostics to ignore specific patterns, such as "Underfull \hbox" warnings that are common in LaTeX documents and may not always indicate a problem.
      d.ignoredPatterns = d.ignoredPatterns or {}
      table.insert(d.ignoredPatterns, [[Underfull \\hbox]])

      -- Add experimental features to the texlab configuration, such as custom label definition commands.
      -- This allows the language server to recognize and provide features for custom LaTeX commands that define labels, improving the development experience when working with LaTeX documents.
      -- In particular, this mitigates https://github.com/latex-lsp/texlab/issues/1159 (label definitions in lstlistings environments not recognized) by adding "texlablabel" as a label definition command.
      -- You must define this in the preamble "\newcommand{\texlablabel}[1]{}" and then write "\texlablabel{mylabel}" near each lstlistings environment using label={mylabel} to have the label recognized by texlab.
      e.labelDefinitionCommands = e.labelDefinitionCommands or {}
      table.insert(e.labelDefinitionCommands, "texlablabel")

      t.diagnostics = d
      t.experimental = e
      s.texlab = t
      opts.servers.texlab.settings = s
    end,
  },
}
