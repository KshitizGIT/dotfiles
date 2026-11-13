return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    keys = {
      { "\\", "<cmd>Oil<cr>", desc = "Open parent directory" },
      {
        "<leader>e",
        function()
          local git_root = vim.fs.root(0, ".git") or vim.fn.getcwd()
          vim.cmd.cd(git_root)
          require('oil').open(git_root)
        end,
        desc = "Open git root"
      },
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    --   dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  }
}
