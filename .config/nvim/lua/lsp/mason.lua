local mason_status_ok, mason = pcall(require, "mason")
local mason_lsp_config_status_ok, mason_lsp_config = pcall(require, "mason-lspconfig")

if not mason_status_ok then
  return
end

if not mason_lsp_config_status_ok then
  return
end

-- language servers
local servers = require('lsp.servers')

mason.setup({
  ensure_installed = {
    'rust-analyzer'
  },
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
})

mason_lsp_config.setup({
  automatic_installation = true,
  ensure_installed = servers,
})
