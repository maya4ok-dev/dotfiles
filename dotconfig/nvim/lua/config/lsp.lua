vim.lsp.config.clangd = {
  cmd = { "clangd", "--query-driver=**" },
}
vim.lsp.enable("clangd")
