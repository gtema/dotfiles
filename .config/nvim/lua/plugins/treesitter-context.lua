return {
	-- Show context of the current function
	{
		"nvim-treesitter/nvim-treesitter-context",
		enabled = true,
		opts = { 
      mode = "cursor",
      max_lines = 3,
      on_attach = function(buf)
        local ft = vim.bo[buf].filetype
        if ft == "markdown" or ft == "markdown_inline" then
          return false -- Instantly kill execution for this file type
        end
        return true -- Continue running normally for code files
      end,
    },
	},
}
