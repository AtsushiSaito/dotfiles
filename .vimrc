" プラグイン管理"
call plug#begin('~/.vim/plugged')
	Plug 'Shougo/unite.vim'
	Plug 'tomasr/molokai'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'davidhalter/jedi-vim'
call plug#end()

colorscheme molokai

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor

syntax on
set nocp
set shiftwidth=2
set tabstop=4
set expandtab
set laststatus=1
set showmatch
set visualbell
set smartindent
set virtualedit=onemore
set number
set fenc=utf-8
set showcmd
set wildmenu wildmode=list:longest,full
set history=1000
set ambiwidth=double
set backspace=indent,eol,start

let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

let g:airline_theme = 'papercolor'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
