local ensure_installed = {
    -- linters
    -- "ruff",
    -- "ty",

    -- formatters
    -- "stylua",
    -- "ruff",

    -- lsp_servers
    "lua_ls",
    "basedpyright",
}

return {
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = ensure_installed,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- Mason must be loaded before its dependents so we need to set it up here.
            -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
            { "mason-org/mason.nvim", opts = {} },

            -- Allows extra capabilities provided by blink.cmp
            -- 'saghen/blink.cmp',
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()


            -- TODO: move languge to individual directory
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
                        diagnostics = { disable = { "missing-fields" } },
                    },
                },
                capabilities = capabilities,
            })
			lspconfig.basedpyright.setup({
                capabilities = capabilities,
            })

            -- following some example keymaps. for more info enter
            -- comand :help vim.lsp.buf
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

            require("plugins.lsp_configs.lsp_attach")
            require("plugins.lsp_configs.lsp_diagnostics")

            -- LSP servers and clients are able to communicate to each other what features they support.
            --  By default, Neovim doesn't support everything that is in the LSP specification.
            --  When you add blink.cmp, luasnip, etc. Neovim now has *more* capabilities.
            --  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.
            -- local capabilities = require('blink.cmp').get_lsp_capabilities()
        end,
    },
}
