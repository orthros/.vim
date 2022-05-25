local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- Installer should always succeed
require("user.lsp.lsp-installer")

local handlers = require('user.lsp.handlers')
handlers.setup()
