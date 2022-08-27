call plug#begin('~/.vim/plugged')
  " fzf
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  
  " Theme
  Plug 'morhetz/gruvbox'
  
  " Status bar
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

  " Syntax highlighter
  Plug 'sheerun/vim-polyglot'
  
  " tmux
  Plug 'alexghergh/nvim-tmux-navigation'

  " NerdTree
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'xuyuanp/nerdtree-git-plugin'

  " IDE
  Plug 'sirver/ultisnips'
  Plug 'eslint/eslint'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdcommenter'
  Plug 'neoclide/coc.nvim' , { 'tag': '*', 'branch' : 'release' }
call plug#end()
