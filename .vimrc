" プラグイン管理"
call plug#begin('~/.vim/plugged')
	Plug 'Shougo/unite.vim'
	Plug 'tomasr/molokai'
    Plug 'bronson/vim-trailing-whitespace'
    "Plug 'davidhalter/jedi-vim'
    Plug 'maralla/completor.vim'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

colorscheme molokai

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

"let g:airline_theme = 'papercolor'

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:deoplete#enable_at_startup = 1

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif
