local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {"pylsp", "lua_ls", "vimls", "bashls"},
  handlers = {
    lsp_zero.default_setup,
  },
})

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
			enabled =true,
			maxLineLength = 88
		},
		flake8= {
			enabled=true,
			maxLineLength = 88,
		},
		pyright={enabled=false},
      }
    }
  }
}
