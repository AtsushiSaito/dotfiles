source $VIMRUNTIME/defaults.vim

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <silent><C-e> :NERDTreeToggle<CR>

colorscheme molokai

set number
set fenc=utf-8
set showcmd
set cursorline
set smartindent
set visualbell
set virtualedit=onemore
set laststatus=2
set showmatch
set wildmode=list:longest
set expandtab
set shiftwidth=4
set clipboard+=unnamed
set wildmenu
