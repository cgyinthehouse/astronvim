-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>f;"] = { "<cmd>Telescope command_history<cr>", desc = "Find Command history" },

    -- Gitsigns
    ["<leader>gh"] = { "<cmd>Gitsigns toggle_linehl<cr>", desc = "Line highlight" },
    ["<leader>gr"] = { "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset Git hunk" },
    ["<leader>gR"] = { "<cmd>Gitsigns reset_buffer<cr>", desc = "Reset Git buffer" },

    ["<leader>h"] = { ":nohl<cr>", desc = "No search highlights" },
    ["<leader>;"] = { "<cmd>Alpha<cr>", desc = "Home Screen" },
    ["<leader>z"] = { "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    -- Move text up and down
    ["<A-j>"] = { ":m .+1<CR>", desc = "Move text down" },
    ["<A-k>"] = { ":m .-2<CR>", desc = "Move text up" },
  },
  v = {
    -- Move text up and down
    ["<A-j>"] = { ":m'>+<CR>gv", desc = "Move text down" },
    ["<A-k>"] = { ":m-2<CR>gv", desc = "Move text up" },
  },
}
