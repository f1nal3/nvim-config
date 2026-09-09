vim.g.mapleader = " "       -- Set space as the leader key
vim.g.maplocalleader = " "

vim.opt.number = true       -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.tabstop = 2         -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2      -- Number of spaces for auto-indent
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.termguicolors = true -- Enable true color support for themes


-- lazy setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) -- Add lazy to the runtime path


-- Plugins
require("lazy").setup({
  -- Cyberdream Theme
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,    -- Load immediately on startup
    priority = 1000, -- Ensure it loads before other plugins
  },
  -- LSPConfig
  { "neovim/nvim-lspconfig",
  },
  -- blink.cmp - autocomplete
  { "saghen/blink.cmp",
    version = "1.*",
    opts = {}
  },
  
  -- Example: Add future plugins here
  -- { "nvim-lualine/lualine.nvim" },
  -- { "nvim-telescope/telescope.nvim" },
})


-- Cyberdream theme
require("cyberdream").setup({
  transparent = true,       -- Enable transparent background (looks great with terminals)
  italic_comments = true,   -- Make comments italicized
  hide_fillchars = true,    -- Removes the vertical bar between split windows for a clean look
})

vim.cmd("colorscheme cyberdream")


-- Go LSP Config
vim.lsp.config("gopls", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
    },
  },
})

vim.lsp.enable("gopls")


-- Lua LSP Config
vim.lsp.config("lua_ls", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },

      diagnostics = {
        globals = { "vim" },
      },

      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },

      hint  = {
        enable = true
      },
    },
  },
})

vim.lsp.enable("lua_ls")
