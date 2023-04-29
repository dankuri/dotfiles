local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vue-language-server",
        "rust-analyzer",
        "rustfmt",
        "lua-language-server",
        "stylua",
        "docker-compose-language-service",
        "dockerfile-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "typescript",
        "javascript",
        "json",
        "vue",
        "tsx",
        "bash",
        "dockerfile",
        "lua",
        "rust",
        "markdown",
        "yaml",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufEnter",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        git = {
          ignore = false,
        },
      }
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, 3, { name = "crates" })
      return M
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup {
        terminals = {
          type_opts = {
            float = {
              row = 0.1,
              col = 0.09,
              width = 0.8,
              height = 0.7,
            },
          },
        },
      }
    end,
  },
  {
    "mbbill/undotree",
    event = "BufRead",
  },
}

return plugins
