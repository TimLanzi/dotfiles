local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
    svelte = { "prettierd", "prettier", stop_after_first = true },
    javascript = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    json = { "prettierd", "prettier", stop_after_first = true },
    graphql = { "prettierd", "prettier", stop_after_first = true },
    markdown = { "prettierd", "prettier", stop_after_first = true },
    astro = { "prettierd", "prettier", stop_after_first = true },
    bash = { "beautysh " },
    yaml = { "yamlfix" },
    toml = { "taplo" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    async = true,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
