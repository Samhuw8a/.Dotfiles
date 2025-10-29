local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"pylsp", "lua_ls", "vimls", "bashls"},
  handlers = {
    lsp_zero.default_setup,
  },
})
