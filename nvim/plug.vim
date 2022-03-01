call plug#begin('~/.vim/plugged')

"git
Plug 'tpope/vim-fugitive'
Plug 'xuyuanp/nerdtree-git-plugin'

" syntax
Plug 'sheerun/vim-polyglot'

" status bar
Plug 'itchyny/lightline.vim'
Plug 'josa42/vim-lightline-coc'

" Themes
Plug 'embark-theme/vim', { 'as': 'embark' }

" Tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

call plug#end()