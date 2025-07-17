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

  -- completion
  { import = "astrocommunity.completion.cmp-cmdline" },

  -- editing support
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },

  -- motion
  { import = "astrocommunity.motion.nvim-surround" },

  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}
