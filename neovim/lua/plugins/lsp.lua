return {
  'mason-org/mason-lspconfig.nvim',
  opts = {
    ensure_installed = { 'pyright', 'jsonls', 'lua_ls', 'roslyn_ls' },
    automatic_enable = true,
  },
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'neovim/nvim-lspconfig',
  },
  config = function(_, opts)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.workspace = capabilities.workspace or {}
    capabilities.workspace.didChangeWatchedFiles = {
      dynamicRegistration = false,
    }
    vim.lsp.config("roslyn_ls", {
      capabilities = capabilities,
      -- Any other custom settings or hooks go here
    })
    vim.lsp.enable("roslyn_ls")
  end,
}
