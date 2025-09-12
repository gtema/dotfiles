return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 
      'nvim-lua/plenary.nvim' ,
      {
          "nvim-telescope/telescope-fzf-native.nvim",
          build = "make",
          enabled = vim.fn.executable("make") == 1,
      },
      -- "nvim-telescope/telescope-dap"
  },
  keys = {
    {
      "<leader>,",
      "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffer" },
    -- git
    { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
    { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
    -- -- search
    -- { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
    -- { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    -- { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    -- { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
    -- { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
    -- { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
    { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
    --{ "<leader>sG", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    -- { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    -- { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
    -- { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
    -- { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    -- { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    -- { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
    -- { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {

        }
      }

  })
  end
  

}
