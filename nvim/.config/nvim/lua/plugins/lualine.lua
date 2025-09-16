return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula",

				-- enable global statusline (have a single statusline
				-- at bottom of neovim instead of one for  every window).
				globalstatus = false,
			},
		})
	end,
}
