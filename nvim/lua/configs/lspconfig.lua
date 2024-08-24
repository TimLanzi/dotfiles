-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html", "cssls", "tsserver", "bashls", "clangd",
  "cmake", "dockerls", "docker_compose_language_service",
  "elixirls", "golangci_lint_ls", "graphql", "jsonls",
  "autotools_ls", "nil_ls", "prismals", "pyright",
  "rust_analyzer", "somesass_ls", "tailwindcss", "yamlls"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}
