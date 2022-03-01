let mapleader=" "

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" shorter commands
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" plugs
map <Leader>n :NERDTreeFind<CR>
 
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" tabs navigtion
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" split screen
map <Leader>p :sp<cr>
map <Leader>vp :vsp<cr>

" Eslint autoFix
map <Leader>f :CocCommand eslint.executeAutofix<cr>

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" node JS
nnoremap <Leader>x :!node %<cr>