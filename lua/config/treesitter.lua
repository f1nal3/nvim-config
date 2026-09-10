vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "lua" },
  callback = function()
    vim.treesitter.start()
  end,
})

