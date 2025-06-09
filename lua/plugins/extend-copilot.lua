-- This file extends the Copilot plugin configuration for Neovim.
-- It customizes the key mappings for accepting suggestions and navigating through them.
-- It relies on vim.g.ai_cmp = false specified in the options.lua file to disable blink completions and use ghost text instead.
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-.>",
          accept_word = "<M-w>",
          accept_line = "<M-l>",
          next = "<a-]>",
          prev = "<a-[>",
          dismiss = "<C-,>",
        },
      },
    },
  },
}
