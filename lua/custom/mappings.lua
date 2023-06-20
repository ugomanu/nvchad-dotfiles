---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>fs"] = { ":w<CR>", "Save file" },
    ["<leader>q"] = { ":q<CR>", "Quit" },

    ["<leader>h"] = { ":vsplit<CR>", "Vertical split" },
    ["<leader>v"] = { ":split<CR>", "Horizontal split" },

    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
  },
  i = {
    ["jk"] = { "<Esc>" },
    ["<C-j>"] = { "" },
    ["<C-k>"] = { "" },
  },
}

M.lspconfig = {
  n = {
    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.disabled = {
  ["<leader>ra"] = false,
  ["<leader>ca"] = false,
}

return M
