return {
    --Colorscheme
    { "savq/melange-nvim" },

    -- Treesitter

    { import = "plugins.treesitter" },

    -- Autopairing

    { import = "plugins.autopairs" },

    --lsp

    { import = "plugins.lsp" },

    --nvim-cmp -> type completion

    { import = "plugins.blink-cmp" },

    --Keybind Helper

    { import = "plugins.which-key" },

    --Telescope Finder

    { import = "plugins.telescope" },

    -- Mason
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    -- Formatting and Linting
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.prettier,
                    -- Add formatters and Linters here
                },
            })
            -- Format on save
            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function()
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end,
    },

    -- Mini icons
    { "nvim-mini/mini.nvim",         version = "*" },

    -- Nvim-web-devicons
    { "nvim-tree/nvim-web-devicons", opts = {} },
}
