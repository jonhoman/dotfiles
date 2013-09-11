filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set ruler

set nocompatible
set modelines=0

set number

" enable per-directory .vimrc files
set exrc
" disable unsafe commands in local .vimrc files
set secure

let mapleader = ","
nnoremap <leader><space> :noh<cr>

set incsearch
set showmatch
set hlsearch
set ignorecase
set smartcase

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa

inoremap jj <ESC>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" save all on focus lost
" autocmd BufLeave,FocusLost silent! wall

set noerrorbells
set shiftround

" vimclojure stuff from vimclojure-easy
"let vimclojure#FuzzyIndent=1
"let vimclojure#HighlightBuiltins=1
"let vimclojure#HighlightContrib=1
"let vimclojure#DynamicHighlighting=1
"let vimclojure#ParenRainbow=1
"let vimclojure#WantNailgun = 1
"let vimclojure#NailgunClient = $HOME . "/dev/vimclojure-easy/lib/vimclojure-nailgun-client/ng"

" no bell
set noeb vb t_vb=

" toggle line number
map <leader>n :set invnumber<CR>

" toggle paste setting
map <leader>p :set invtoggle<CR>

" ctrlp ignore list
set wildignore+=*/log/*,*/runs/*,*/tmp/* 
