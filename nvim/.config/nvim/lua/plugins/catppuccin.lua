return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            auto_integrations = true,
            -- integrations = {
            --     telescope = {
            --         enabled = true,
            --         style = "transparent",
            --     }
            -- }
        })
        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}
