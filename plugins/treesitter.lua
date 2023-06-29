return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = {
      "bash",
      "c",
      "javascript",
      "json",
      "lua",
      "python",
      "typescript",
      "tsx",
      "css",
      "rust",
      "java",
      "yaml",
      "markdown",
      "markdown_inline",
      "fish",
      "embedded_template",
      "toml",
      "dockerfile",
      "graphql",
      "prisma",
    }
  end,
  dependencies = {
    {
      "HiPhish/nvim-ts-rainbow2",
      config = function()
        require("nvim-treesitter.configs").setup {
          rainbow = {
            enable = true,
            -- list of languages you want to disable the plugin for
            -- disable = { "jsx", "cpp" },
            -- Which query to use for finding delimiters
            query = "rainbow-parens",
            -- Highlight the entire buffer all at once
            strategy = require "ts-rainbow.strategy.global",
          },
        }

        vim.api.nvim_create_autocmd({ "BufWritePost", "FocusGained" }, {
          callback = function()
            vim.cmd "TSDisable rainbow"
            vim.cmd "TSEnable rainbow"
          end,
        })
      end,
    },
  },
}
