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
    ["<leader>bf"] = { "<cmd>Telescope buffers<cr>", desc = "List buffers" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>f;"] = { "<cmd>Telescope command_history<cr>", desc = "Command history" },
    ["<leader>gh"] = { "<cmd>Gitsigns toggle_linehl<cr>", desc = "Line highlight" },

    ["<leader>P"] = { "<cmd>Telescope projects<cr>", desc = "Porjects" },
    ["<leader>U"] = { "<cmd>Telescope undo<cr>", desc = "Undo Tree" },
    ["<leader>h"] = { ":nohl<cr>", desc = "No search highlights" },
    ["<leader>;"] = { "<cmd>Alpha<cr>", desc = "Home Screen" },

    -- folke/trouble.vim
    ["<leader>x"] = { name = " Touble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace diagnostics" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document diagnostics" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Loclist " },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix " },
    ["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "Lsp References" },
    ["<A-j>"] = { ":m .+1<CR>", desc = "Move text down" },
    ["<A-k>"] = { ":m .-2<CR>", desc = "Move text up" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Move text up and down
  },
  v = {
    ["<A-j>"] = { ":m'>+<CR>gv", desc = "Move text down" },
    ["<A-k>"] = { ":m-2<CR>gv", desc = "Move text up" },
  },
  -- Move text up and down
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
