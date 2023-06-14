vim.opt.termguicolors = true
vim.o.autoindent = true
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.hlsearch = true
vim.o.number = true
vim.o.cursorline = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("plugins")
require("lsp")
require("luali")
require("ts")
