return {
	"neovim/nvim-lspconfig",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("lua", {})

		vim.lsp.enable("lua")
	end,
}
