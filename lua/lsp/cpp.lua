local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("clangd", {
  capabilities = capabilities,
})

vim.lsp.enable("clangd")

