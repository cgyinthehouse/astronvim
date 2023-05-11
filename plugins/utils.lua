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
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
  "folke/trouble.nvim",
}
