return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "ahmedkhalf/project.nvim",
      "debugloop/telescope-undo.nvim",
    },
    config = function(plugin, opts)
      require "plugins.configs.telescope" (plugin, opts)
      local telescope = require "telescope"
      telescope.load_extension "projects"
      telescope.load_extension "undo"
    end,
    opts = function(_, opts)
      opts.defaults.sorting_strategy = "descending"
      opts.defaults.path_display = { "smart" }
      opts.defaults.layout_config = {
        horizontal = {
          prompt_position = "bottom",
          preview_width = 0.55,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
      }
      opts.extensions = {
        undo = {
          use_delta = true,
          side_by_side = true,
          scroll_strategy = "limit",
          layout_strategy = "vertical",
          layout_config = {
            width = 0.85,
            preview_height = 0.8,
          },
        },
      }
    end,
  },
  { "ahmedkhalf/project.nvim",      config = function() require("project_nvim").setup() end },
  { "debugloop/telescope-undo.nvim" },
}
