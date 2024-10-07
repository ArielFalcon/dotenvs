return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		name = "gruvbox",
		config = function()
			require("gruvbox").setup({
				transparent_background = true,
			})
		vim.cmd.colorscheme("gruvbox")
		end,
	},
}
