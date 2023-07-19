return {
  "AstroNvim/astrocommunity",
  -- language packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },

  -- editing support
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- motion
  { import = "astrocommunity.motion.nvim-surround" },

  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- project
  { import = "astrocommunity.project.project-nvim" },
  { "jay-babu/project.nvim", keys = { { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Find projects" } } },
}
