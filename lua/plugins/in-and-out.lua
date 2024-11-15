return {
  "ysmb-wtsg/in-and-out.nvim",
  keys = {
    {
      -- the suggested keybinding Ctrl+ENTER, does not work in Gnome Terminal
      -- because Ctrl-ENTER in Gnome Terminal is just ENTER,
      -- so let's map it to "Alt+ENTER"
      "<a-CR>",
      function()
        require("in-and-out").in_and_out()
      end,
      mode = { "i" },
      desc = "In and Out",
    },
  },
}
