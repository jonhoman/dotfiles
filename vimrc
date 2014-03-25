execute pathogen#infect()
syntax on
filetype plugin indent on

" colorscheme
set t_Co=256
colorscheme grb4

" tab setup
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set ruler

set nocompatible
set modelines=0

set number

" make leader key comma
let mapleader = ","

" turn highlighting leader space
nnoremap <leader><space> :noh<cr>

" search setup
set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

" visual autocomplete for command menu
set wildmenu

inoremap jj <ESC>

" split window management
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" nerd tree mappings
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

set noerrorbells
set shiftround

" no bell
set noeb vb t_vb=

" ctrlp ignore list
set wildignore+=*/log/*,*/runs/*,*/tmp/* 

" alt-ruby.vim mappings
nnoremap <leader>at :AlternateToggle<cr>
nnoremap <leader>av :AlternateVerticalSplit<cr>
nnoremap <leader>as :AlternateHorizontalSplit<cr>
