return {
  {
    -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    keys = { ":", "/", "?" }, -- lazy load cmp on more keys along with insert mode
    dependencies = {
      "hrsh7th/cmp-cmdline",  -- add cmp-cmdline as dependency of cmp
    },
    opts = function(_, opts)
      local cmp = require "cmp"
      opts.formatting.format = require("lspkind").cmp_format {
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = "",
        symbol_map = {
          Codeium = "󰦪",
        },
      }
      opts.sources = cmp.config.sources {
        { name = "codeium",  priority = 1000 }, -- new source
        { name = "nvim_lsp", priority = 900 },
        { name = "luasnip",  priority = 750 },
        { name = "buffer",   priority = 500 },
        { name = "path",     priority = 250 },
      }
    end,
    config = function(_, opts)
      local cmp = require "cmp"
      -- run cmp setup
      cmp.setup(opts)

      -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
  { "hrsh7th/cmp-cmdline" },
}
