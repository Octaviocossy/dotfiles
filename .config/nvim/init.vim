" Files
runtime ./plug.vim
runtime ./maps.vim
runtime ./plug-config.vim

" Basics
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Theme
syntax on
set termguicolors
let g:nightflyTransparent = v:true
colorscheme nightfly
highlight normal ctermbg=none
