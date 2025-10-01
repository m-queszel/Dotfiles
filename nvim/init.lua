require("config.lazy")
require("mason").setup()
require("mini.icons").setup()

vim.g.mapleader = " "

-- Colorscheme
vim.cmd.colorscheme("melange")

-- Allow Neovim yanks to apply to clipboard
vim.opt.clipboard = "unnamedplus"
-- Indentation Fix
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Line numbers:
vim.opt.number = true
vim.opt.relativenumber = true

vim.lsp.enable("lua")
