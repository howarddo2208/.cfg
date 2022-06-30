set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set clipboard+=unnamedplus

call plug#begin()

Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

"map keys ----------------- {{{ 
let mapleader = " "
nnoremap <leader>pv : Vex<CR>

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <C-p> :GFiles<CR>
" I don't know if I love these remaps yet.  I am considering doing
" <leader>c(k|j|o)
nnoremap <C-i> :cnext<CR>
nnoremap <C-o> :cprev<CR>
nnoremap <C-E> :copen<CR>
" }}}

augroup config_setting
    autocmd!
    autocmd FileType vim,zsh setlocal foldlevel=0 foldmethod=marker
augroup END
