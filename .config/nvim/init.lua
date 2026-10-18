vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function(args)
    -- Overwrite the core injection map with an empty layout string
    vim.treesitter.query.set("markdown", "injections", "")
    vim.treesitter.query.set("markdown_inline", "injections", "")
  end,
})
require('config')
