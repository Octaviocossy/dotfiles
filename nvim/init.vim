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
so ~/AppData/Local/nvim/plug.vim
so ~/AppData/Local/nvim/maps.vim
so ~/AppData/Local/nvim/plug-config.vim

syntax on
colorscheme embark
highlight normal ctermbg=none
set laststatus=2
set noshowmode

" javascript
autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx
autocmd bufnewfile,bufread *.ts set filetype=typescript.tsx
autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
autocmd bufnewfile,bufread *.js set filetype=javascript.jsx

" searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter