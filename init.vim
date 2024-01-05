set nocompatible              " be iMproved, required
set t_Co=256
filetype off                  " required
filetype plugin on
syntax on

set smartindent
set nu
set relativenumber
set mouse=a	
set nowrap
set smartcase
set incsearch
set nohlsearch
set encoding=UTF-8
set tabstop=4 softtabstop=4
set noerrorbells
set scrolloff=8
set shiftwidth=4
set noswapfile
set foldmethod=syntax
set colorcolumn=88
au BufNewFile,BufRead *.py set foldmethod=indent
autocmd BufWinEnter,BufRead * silent! :%foldopen!


let mapleader=" "
nnoremap Y y

au BufRead,BufNewFile *.ptsd set syntax=ptsd

"UNdo break points
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

nnoremap ö )
nnoremap ä (
nnoremap q: <nop>
nnoremap Q <nop>


nnoremap <leader>rp :! mypy --ignore-missing-imports --disallow-untyped-calls % && python3.11 "%"<CR>
nnoremap <leader>ru :! python3.11 "%"<CR>
nnoremap <leader>tp :! mypy --disallow-untyped-calls  --disallow-untyped-defs --disallow-incomplete-defs "%"<CR>
nnoremap <leader>rg :! go run "%"<CR>
nnoremap <leader>fm :LspZeroFormat<CR>
nnoremap <leader>rs :! cargo run "%"<CR>

nnoremap <leader>m :MaximizerToggle!<CR>

nnoremap <leader>h  :wincmd h<CR>
nnoremap <leader>l  :wincmd l<CR>
nnoremap <leader>j  :wincmd j<CR>
nnoremap <leader>k  :wincmd k<CR> 
nnoremap <leader>sv :wincmd v<CR>
nnoremap <leader>ss :wincmd s<CR>

nnoremap <leader>f :NERDTreeToggle<CR>

nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>gf :Telescope git_files<CR>
nnoremap <leader>t :Tagbar<CR>

nnoremap <leader>bl :bnext<CR>
nnoremap <leader>bh :bprev<CR>
nnoremap <leader>tr :below vert term<CR>

nnoremap <C-p> :GFiles<CR>
xnoremap <leader>p "_dp 
nnoremap <leader>rain :CellularAutomaton make_it_rain<CR>
nnoremap <leader>gol :CellularAutomaton game_of_life<CR>

" Git integration
nmap <leader>gs :G<CR>
nmap <leader>gl :Git commit<CR>
nmap <leader>gh :Git push<CR>

map <leader>cc <Plug>NERDCommenterToggle

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme ="angr"

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
" Plug 'vim-syntastic/syntastic'
" Plug 'neoclide/coc.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/indentpython.vim'
Plug 'tribela/vim-transparent'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'eandrju/cellular-automaton.nvim'

"  Uncomment these if you want to manage LSP servers from neovim
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required


colorscheme gruvbox
set background=dark


" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_python_checkers = ['mypy',  'pycodestyle', 'flake8']
" let g:syntastic_python_mypy_args = '--disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs --ignore-missing-imports'
" let g:syntastic_python_flake8_args = "--max-line-length=88 "
" let g:syntastic_python_pycodestyle_args = "--ignore E501"
" " let g:syntastic_python_checkers = ['pycodestyle']
" let g:Syntastic_enable_ballons = 1

let g:ctrlp_user_command=['.git/ ' ,'.git --git-dir=%s/.git ls-files -oc --executable-standart']
let g:ctrlp_user_caching=0

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']
" autocmd VimEnter * NERDTree

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

 let g:NERDCreateDefaultMappings = 1
"
" " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
 let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
 let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
"
" " Enable NERDCommenterToggle to check all selected lines is commented or not 
 let g:NERDToggleCheckAllLines = 1

lua <<EOF
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
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

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
  })
}) 

EOF
