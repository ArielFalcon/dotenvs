return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.live_grep, {})
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader>f", builtin.find_files, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
        pickers = {
          find_files = {
            theme = "dropdown",
            layout_config = {
							width = 0.5,
							height = 0.8,
						}
          },
          live_grep = {
            theme = "cursor",
            layout_config = {
							width = 0.8,
							height = 0.3,
						},
        },
				extensions = {
					["ui-select"] = 
						require("telescope.themes").get_dropdown({}),
					}
				}
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
