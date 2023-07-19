return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = {
      "bash",
      "c",
      "css",
      "embedded_template",
      "fish",
      "graphql",
      "javascript",
      "json",
      "jsonc",
      "python",
      "rust",
      "typescript",
      "tsx",
      "toml",
      "yaml",
    }
  end,
}
