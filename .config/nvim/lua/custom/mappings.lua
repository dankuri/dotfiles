local M = {}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "page_down & center" },
    ["<C-u>"] = { "<C-u>zz", "page_down & center" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "tmux window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "tmux window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "tmux window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "tmux window up" },
    ["<leader>u"] = { "<cmd> UndotreeToggle<CR>", "toggle undo tree" },
  },
}
return M
