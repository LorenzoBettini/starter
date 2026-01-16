-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              diagnostics = {
                ignoredPatterns = {
                  -- Rust regexes. Match the diagnostic text you want to suppress.
                  [[Underfull \\hbox]],
                  -- If you want to be extra broad:
                  -- [[Underfull \\hbox.*]],
                },
              },
            },
          },
        },
      },
    },
  },
}
