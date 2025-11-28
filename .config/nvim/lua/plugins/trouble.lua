return {
	-- better diagnostics list and others
	{
		"folke/trouble.nvim",
		cmd = "Trouble",
		opts = {
			auto_close = true,
			use_diagnostic_signs = true,
			modes = {
				preview_float = {
					mode = "diagnostics",
					preview = {
						type = "float",
						relative = "editor",
						position = "right",
						size = 0.3,
					},
				},
			},
		},
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
			{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
			{ "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
			{ "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
			{ "<leader>xl", "<cmd>Trouble lsp toggle<cr>", desc = "LSP (Trouble)" },
		},
	},
}
