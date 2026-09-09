return {
  {
    "neovim/nvim-lsconfig",
    config = function()
      vim.lsp.config("gopls", {})
      vim.lsp.enable("gopls")
    end,
  },
}

