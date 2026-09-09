local capabilities = require("blink.cmp").get_lsp_capabilities()

vim.lsp.config("gopls", {
  capabilities = capabilities,

  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
    },
  },
})

vim.lsp.enable("gopls")

