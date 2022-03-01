" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" lightline
let g:lightline = {
      \ 'colorscheme': 'embark',
      \ 'active': {
      \   'left': [[ 'mode', 'paste' ],
      \           ['gitbranch', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component': {
      \   'lineinfo': '%3l:%-2v ¶',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'LightlineFugitive'
      \ },
      \ 'separator': { 'left': '', 'right': ''},
      \ 'subseparator': { 'left': '❯', 'right': '❮'}
      \ }

function! LightlineFugitive() abort
  let branch = fugitive#head()
  return branch !=# '' ? ' '.branch : ''
endfunction

"  nerdtee
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

"Js
let g:javascript_plugin_flow = 1

"theme
if (has("termguicolors"))
 set termguicolors
endif

let g:embark_terminal_italics = 1