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
set encoding=UTF-8
set tabstop=4 softtabstop=4
set noerrorbells
set shiftwidth=4
set noswapfile
set foldmethod=syntax
au BufNewFile,BufRead *.py set foldmethod=indent
autocmd BufWinEnter,BufRead * silent! :%foldopen!

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>M :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

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

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>t :TagbarToggle<CR>

nnoremap <leader>rp :! mypy --ignore-missing-imports --disallow-untyped-calls % && python3 "%"<CR>
nnoremap <leader>ru :! make<CR>
nnoremap <leader>tp :! mypy --disallow-untyped-calls  --disallow-untyped-defs --disallow-incomplete-defs "%"<CR>
nnoremap <leader>rg :! go run "%"<CR>

nnoremap <leader>h  :wincmd h<CR>
nnoremap <leader>l  :wincmd l<CR>
nnoremap <leader>j  :wincmd j<CR>
nnoremap <leader>k  :wincmd k<CR> 
nnoremap <leader>sv :wincmd v<CR>
nnoremap <leader>ss :wincmd s<CR>
nnoremap <leader>fa zA
nnoremap <leader>fl za

map  <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

nnoremap <leader>bl :bnext<CR>
nnoremap <leader>bh :bprev<CR>
nnoremap <leader>tr :below vert term<CR>

nnoremap <C-p> :GFiles<CR>
xnoremap <leader>p "_dp 

" Git integration
nmap <leader>gs :G<CR>
nmap <leader>gl :Git commit<CR>
nmap <leader>gh :Git push<CR>

map <leader>cc <Plug>NERDCommenterToggle

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme ="angr"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mbbill/undotree'
Plugin 'puremourning/vimspector'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'szw/vim-maximizer'
Plugin 'preservim/nerdcommenter'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'reservim/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'gryf/pylint-vim' 
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'psliwka/vim-smoothie'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tribela/vim-transparent'
Plugin 'Align'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
set background=dark

" Auto pairs
" g:AutoPairs

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

let g:ctrlp_user_command=['.git/ ' ,'.git --git-dir=%s/.git ls-files -oc --executable-standart']
let g:ctrlp_user_caching=0

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

" Vim inspector
" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint