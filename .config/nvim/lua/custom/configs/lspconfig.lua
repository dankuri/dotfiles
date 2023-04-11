local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "emmet_ls",
  "tailwindcss",
  "tsserver",
  "volar",
  "rust_analyzer",
  "lua_ls",
  "jsonls",
  "docker_compose_language_service",
  "dockerls",
}

for _, lsp in ipairs(servers) do
  if lsp == "rust_analyzer" then
    require("rust-tools").setup {
      server = {
        on_attach = on_attach,
        capabilities = capabilities,
      },
    }
    return
  end
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
