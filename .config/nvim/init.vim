set shell=/bin/zsh 
set shiftwidth=4 
set tabstop=4 
set expandtab 
set textwidth=0 
set autoindent 
set hlsearch 
set clipboard=unnamed 
set backspace=indent,eol,start
syntax on 

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" vim-horizon
set termguicolors
colorscheme horizon
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

