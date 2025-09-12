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
  {
  -- Array of fields to make global (to be used as independent variables)
}

  -- -- auto pairs
  -- {
  --   "echasnovski/mini.pairs",
  --   event = "VeryLazy",
  --   opts = {},
  --   -- keys = {
  --   --   {
  --   --     "<leader>up",
  --   --     function()
  --   --       local Util = require("lazy.core.util")
  --   --       vim.g.minipairs_disable = not vim.g.minipairs_disable
  --   --       if vim.g.minipairs_disable then
  --   --         Util.warn("Disabled auto pairs", { title = "Option" })
  --   --       else
  --   --         Util.info("Enabled auto pairs", { title = "Option" })
  --   --       end
  --   --     end,
  --   --     desc = "Toggle auto pairs",
  --   --   },
  --   -- },
  -- },

  -- -- bufremove
  -- {
  --   "echasnovski/mini.bufremove",
  --   event = "VeryLazy",
  --   config = function()
  --     require("mini.bufremove"):setup()
  --   end
  -- },

  -- -- Fast and feature-rich surround actions. For text that includes
  -- -- surrounding characters like brackets or quotes, this allows you
  -- -- to select the text inside, change or modify the surrounding characters,
  -- -- and more.
  -- {
  --   "echasnovski/mini.surround",
  --   opts = {
  --     mappings = {
  --       add = "gsa", -- Add surrounding in Normal and Visual modes
  --       delete = "gsd", -- Delete surrounding
  --       find = "gsf", -- Find surrounding (to the right)
  --       find_left = "gsF", -- Find surrounding (to the left)
  --       highlight = "gsh", -- Highlight surrounding
  --       replace = "gsr", -- Replace surrounding
  --       update_n_lines = "gsn", -- Update `n_lines`
  --     },
  --   },
  -- },

  -- {
  --   "echasnovski/mini.comment",
  --   event = "VeryLazy",
  --   opts = {
  --     options = {
  --       custom_commentstring = function()
  --         return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
  --       end,
  --     },
  --   },
  -- },
}
