vim.api.nvim_create_autocmd("FileType", {
  pattern = { "go", "lua" },
  callback = function()
    vim.treesitter.start()
-- Filetype plugin re-writes formatoptions
-- We remove "r" and "o" to disable automatic continuation of comments on newline
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

