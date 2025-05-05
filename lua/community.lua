-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- language packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.sql" },

  -- leetcode
  { import = "astrocommunity.game.leetcode-nvim" },
  {
    "kawre/leetcode.nvim",
    keys = { { "<Leader>L", "<cmd>Leet<cr>", desc = "Leetcode" } },
    opts = function(_, opts) opts.lang = "typescript" end,
  },

  -- completion
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.codeium-nvim" },

  -- editing support
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { "folke/todo-comments.nvim", keys = { { "<Leader>fT", "<cmd>TodoTelescope<cr>", desc = "Find Todos" } } },

  -- motion
  { import = "astrocommunity.motion.nvim-surround" },

  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- project
  { import = "astrocommunity.project.project-nvim" },
  { "jay-babu/project.nvim", keys = { { "<Leader>fp", "<cmd>Telescope projects<cr>", desc = "Find projects" } } },
}
