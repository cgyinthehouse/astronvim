-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  {
    "akinsho/toggleterm.nvim",
    event = "BufEnter",
    opts = function(_, opt) opt.open_mapping = [[<C-\>]] end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
      max_width = 80,
      background_colour = "#000000",
    },
  },
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astroui.status"
      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        -- status.component.mode(),
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
        status.component.file_info { filename = { modify = ":~:." } },
        status.component.git_branch(),
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.treesitter(),
        status.component.nav(),
      }

      return opts
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("lsp_signature").setup {
        {
          toggle_key = "<M-x>", -- toggle signature on and off in insert mode,  e.g.
          select_signature_key = "<M-n>", -- cycle to next signature, e.g. '<M-n>' function overloading
        },
      }
    end,
  },
  {
    "jcdickinson/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    event = "InsertEnter",
    config = function() require("codeium").setup {} end,
  },
  {
    "rmagatti/goto-preview",
    keys = "gp",
    config = function()
      require("goto-preview").setup {
        default_mappings = true,
      }
    end,
  },
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
}
