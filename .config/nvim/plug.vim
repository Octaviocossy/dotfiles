call plug#begin('~/.vim/plugged')
  " fzf
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  
  " Theme
  Plug 'morhetz/gruvbox'
  
  " Status bar
  Plug 'nvim-lualine/lualine.nvim'

  " Syntax highlighter
  Plug 'sheerun/vim-polyglot'
  
  " tmux
  Plug 'alexghergh/nvim-tmux-navigation'

  " NerdTree
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  
  " Git
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'xuyuanp/nerdtree-git-plugin'

  " IDE
  Plug 'sirver/ultisnips'
  Plug 'alvan/vim-closetag'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim' , { 'tag': '*', 'branch' : 'release' }
  Plug 'yaegassy/coc-tailwindcss3', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
