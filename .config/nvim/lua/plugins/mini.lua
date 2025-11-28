return {
	{
		"echasnovski/mini.nvim",
		version = "*",
		opts = {
			--    make_global = { 'put', 'put_text', 'zoom' },
		},
		config = function()
			require("mini.misc").setup(opts)
			--   -- Fix bufferline when restoring a session
			--   vim.api.nvim_create_autocmd("BufAdd", {
			--     callback = function()
			--       vim.schedule(function()
			--         pcall(nvim_bufferline)
			--       end)
			--     end,
			--   })
		end,
	},
}
