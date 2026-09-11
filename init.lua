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

require("lazy").setup("plugins")

require("lsp.cpp")
require("lsp.go")
require("lsp.lua")

require("config.treesitter")
require("config.diagnostics")

require("config.keymaps")

