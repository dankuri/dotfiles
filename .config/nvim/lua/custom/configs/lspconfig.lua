local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local mlsp = require "mason-lspconfig"
mlsp.setup {
  ensure_installed = {
    "html",
    "cssls",
    "emmet_ls",
    "tsserver",
    "volar",
    "lua_ls",
    "jsonls",
    "docker_compose_language_service",
    "dockerls",
    "intelephense",
    "elixirls",
    "rust_analyzer",
    "tailwindcss",
  },
}
mlsp.setup_handlers {
  function(server_name) -- default handler (optional)
    if server_name ~= "tailwindcss" then
      lspconfig[server_name].setup {}
    end
  end,
  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  ["rust_analyzer"] = function()
    require("rust-tools").setup {
      server = {
        on_attach = on_attach,
        capabilities = capabilities,
      },
    }
  end,
}

lspconfig["tailwindcss"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "astro",
    "html",
    "markdown",
    "mdx",
    "css",
    "sass",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
}

lspconfig["lua_ls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      format = {
        enable = true,
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
