return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts)
			local wk = require("which-key")
			wk.setup(opts)

			-- Register your keymaps here
			wk.add({
				-- Your existing keymap as a group
				{ "<leader>w", group = "save/workspace" },
				{ "<leader>wq", ":w<CR>:Ex<CR>", desc = "Save and open netrw" },
				{ "<leader>ww", ":w<CR>", desc = "Save and continue editing" },
				{ "<leader>we", ":wq<CR>", desc = "Save and exit nvim" },

				-- Telescope
				{ "<leader>f", group = "file/find" },
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "grep files" },

				-- Your which-key helper keymap
				{
					"<leader>?",
					function()
						wk.show({ global = false })
					end,
					desc = "Buffer Local Keymaps (which-key)",
				},
			})
		end,
	},
}
