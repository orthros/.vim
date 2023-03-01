local status_ok, mason = pcall(require, "mason")
if not status_ok then
  -- TODO: Put in some information on why we failed
  vim.notify_once("Could not require mason")
  return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  -- TODO: Put in some information on why we failed
  vim.notify_once("Could not require mason-lspconfig")
  return
end

mason.setup()
mason_lspconfig.setup()

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  -- TODO: Put in some information on why we failed
  vim.notify_once("Could not require lspconfig")
  return
end

local opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

local lua_ls_opts = require("user.lsp.settings.lua_ls")
lspconfig.lua_ls.setup(vim.tbl_deep_extend("force", lua_ls_opts, opts))

local jsonls_opts = require("user.lsp.settings.jsonls")
lspconfig.jsonls.setup(vim.tbl_deep_extend("force", jsonls_opts, opts))

local gopls_opts = require("user.lsp.settings.gopls")
lspconfig.gopls.setup(vim.tbl_deep_extend("force", gopls_opts, opts))

local rust_analyzer_opts = require("user.lsp.settings.rust_analyzer")
lspconfig.rust_analyzer.setup(vim.tbl_deep_extend("force", rust_analyzer_opts, opts))

local pyright_opts = require("user.lsp.settings.pyright")
lspconfig.pyright.setup(vim.tbl_deep_extend("force", pyright_opts, opts))

