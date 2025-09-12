return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- WARN: Don't forget to install formaters/linters w. Mason
                -- or in lsp-config under ensure_installed
                null_ls.builtins.formatting.stylua,
                -- null_ls.builtins.formatting.ruff,
                -- null_ls.builtins.diagnostics.ruff,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
