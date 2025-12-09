local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('mbbill/undotree')
Plug('ellisonleao/gruvbox.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('tribela/vim-transparent')
Plug('nvim-lualine/lualine.nvim')
Plug('szw/vim-maximizer')
Plug('preservim/nerdcommenter')
Plug('preservim/nerdtree')
Plug('junegunn/fzf')
Plug('junegunn/fzf.vim')
Plug('jiangmiao/auto-pairs')
Plug('nvim-telescope/telescope.nvim')

Plug('airblade/vim-gitgutter')

Plug('tpope/vim-fugitive')
Plug('preservim/tagbar')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.4' })

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('eandrju/cellular-automaton.nvim')

Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')

Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v3.x' })
Plug('neovim/nvim-lspconfig')

Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

Plug('dcampos/nvim-snippy')
Plug('honza/vim-snippets')
Plug('dcampos/cmp-snippy')
Plug('onsails/lspkind-nvim')
Plug('ray-x/cmp-treesitter')

Plug('github/copilot.vim')
Plug('kaarmu/typst.vim')

--Plug('ray-x/guihua.lua', { ['do'] = 'cd lua/fzy && make' })
--Plug('ray-x/navigator.lua')

--Plug('lervag/vimtex')

vim.call('plug#end')
