" プラグイン管理"
call plug#begin('~/.vim/plugged')
	Plug 'Shougo/unite.vim'
	Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
	Plug 'tomasr/molokai'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme molokai

syntax on
set nocp
set shiftwidth=2
set tabstop=4
set expandtab
set laststatus=2
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

let g:airline_theme = 'papercolor'
