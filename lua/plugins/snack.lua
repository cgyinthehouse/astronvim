return {
  "folke/snacks.nvim",
  opts = {
    notifier = {
      top_down = false,
    },

    picker = {
      layout = {
        reverse = true,
        layout = {
          box = "horizontal",
          backdrop = false,
          width = 0.8,
          height = 0.9,
          border = "none",
          {
            box = "vertical",
            { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
            { win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center" },
          },
          {
            win = "preview",
            title = "{preview:Preview}",
            width = 0.55,
            border = "rounded",
            title_pos = "center",
          },
        },
      },
    },
  },
}
