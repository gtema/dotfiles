return {
	-- This is what powers LazyVim's fancy-looking
	-- tabs, which include filetype icons and close buttons.
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"tiagovla/scope.nvim", -- Ensure scope loads first
		},
		--dependencies = "nvim-tree/nvim-web-devicons",
		event = "VeryLazy",
		-- keys = {
		--   { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
		--   { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
		--   { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
		--   { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete buffers to the right" },
		--   { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete buffers to the left" },
		--   { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		--   { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		--   { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		--   { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		-- },
		opts = {
			options = {
				mode = "buffers",
				style_preset = "default",
				always_show_bufferline = false,
				--tab_size = 18,
				--     -- stylua: ignore
				--     close_command = function(n) require("mini.bufremove").delete(n, false) end,
				--     -- stylua: ignore
				--     right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
				diagnostics = "nvim_lsp",
				--     always_show_bufferline = false,
				-- diagnostics_indicator = function(_, _, diag)
				-- 	local icons = require("lazyvim.config").icons.diagnostics
				-- 	local ret = (diag.error and icons.Error .. diag.error .. " " or "")
				-- 		.. (diag.warning and icons.Warn .. diag.warning or "")
				-- 	return vim.trim(ret)
				-- end,
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
					--} or nil,
				end,
				-- Clear clutter when sidebars (like nvim-tree or neo-tree) are open
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
				separator_style = "thin", -- Clear, scannable look
				--     offsets = {
				--       {
				--         filetype = "neo-tree",
				--         text = "Neo-tree",
				--         highlight = "Directory",
				--         text_align = "left",
				--       },
				--     },
				groups = { options = { toggle_hidden_on_enter = true } },
			},
		},
		config = function(_, opts)
			require("bufferline").setup(opts)
			-- Fix bufferline when restoring a session
			vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
				callback = function()
					vim.schedule(function()
						pcall(nvim_bufferline)
					end)
				end,
			})
		end,
	},
}
