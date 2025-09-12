return {
  -- better vim.ui
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts={},
    -- lazy = true,
    config = function()
      require("dressing").setup({
        input = {
          enabled = true,
          trim_prompt = false,
        }
      })
    end
  },
}
