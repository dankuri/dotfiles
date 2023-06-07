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
    ["<leader>tw"] = { "<cmd> set wrap!<CR>", "toggle wrap" },
    ["<leader>gd"] = { "<cmd> Gitsigns diffthis<CR>", "git diff" },
    ["<leader>gb"] = { "<cmd> Gitsigns blame_line<CR>", "git blame line" },
    ["<leader>gp"] = { "<cmd> Gitsigns preview_hunk_inline<CR>", "git preview hunk inline" },
    ["<leader>fW"] = {
      function()
        require("telescope.builtin").live_grep {
          additional_args = function(args)
            return vim.list_extend(args, { "--hidden", "--no-ignore" })
          end,
        }
      end,
      "find words in all files",
    },
    ["<leader>X"] = {
      function()
        require("nvchad_ui.tabufline").closeOtherBufs()
      end,
      "close all bufs except cur",
    },
  },
}
return M
