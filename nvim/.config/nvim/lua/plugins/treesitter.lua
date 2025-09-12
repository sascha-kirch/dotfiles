return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed ={"c", "cpp", "vim", "lua", "markdown", "python", "rust", "bash"},
            auto_install = true,
            highlight = {enable=true},
            indent = {enable = true},
        })
    end
}
