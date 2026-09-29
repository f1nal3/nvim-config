local function format()
  vim.lsp.buf.format({
    async = true,
  })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.go", "*.c", "*.cpp", "*.h", "*.hpp" },
  callback = format,
})
