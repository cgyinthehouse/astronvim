return {
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("lsp_signature").setup {
        {
          toggle_key = "<M-x>",           -- toggle signature on and off in insert mode,  e.g.
          select_signature_key = "<M-n>", -- cycle to next signature, e.g. '<M-n>' function overloading
        },
      }
    end,
  },
  { "folke/trouble.nvim",  event = "BufEnter" },
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
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
}
