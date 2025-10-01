require("config.lazy")
require("mason").setup()
require("mini.icons").setup()
require("mini.indentscope").setup()
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

--Set MatchParen highlighting to same as seach (red was too distracting)
vim.api.nvim_set_hl(0, "MatchParen", { link = "Search" })

-- Line numbers:
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable LSP servers

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})
