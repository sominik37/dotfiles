return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
  "williamboman/mason-lspconfig.nvim",
  confing = function()
     require("mason-lspconfig").setup({
      ensure_installed = {"pyright", "lua-language-server","tsserver"}

      })
  end
  },
  {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.pyright.setup({})
    lspconfig.tsserver.setup({})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
  end
 }
}
