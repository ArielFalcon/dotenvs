return {
	"folke/noice.nvim",
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    },
	config = function()
		require("noice").setup({
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
			cmdline = {
				view = "cmdline_popup",
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				lsp_doc_border = true,
			},
			-- views = {
			--   cmdline_popup = {
			--     filter_options = {},
			--     win_options = {
			--       winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
			--     },
			--   },
			-- },
		})
	end,
}
