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
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astroui.status"
      opts.statusline = {
        hl = { fg = "fg", bg = "bg" },
        -- status.component.mode(),
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
        status.component.file_info { filename = { modify = ":~:." }, filetype = false },
        status.component.git_branch(),
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.virtual_env(),
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
    "rmagatti/goto-preview",
    keys = "gp",
    config = function()
      require("goto-preview").setup {
        default_mappings = true,
      }
    end,
  },
  {
    "kawre/leetcode.nvim",
    keys = { { "<Leader>L", "<cmd>Leet<cr>", desc = "Leetcode" } },
    opts = function(_, opts) opts.lang = "typescript" end,
  },
  {
    "Exafunction/windsurf.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function() require("codeium").setup {} end,
    cmd = "Codeium",
    build = ":Codeium Auth",
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      {
        "Exafunction/windsurf.nvim",
      },
    },
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "codeium" },
        providers = {
          codeium = { name = "Codeium", module = "codeium.blink", async = true },
        },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    optional = true,
    keys = {
      {
        "<Leader>fT",
        function() Snacks.picker.todo_comments { keywords = { "TODO", "FIX", "FIXME" } } end,
        desc = "Find Todos",
      },
    },
  },
}
