syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set nohlsearch
set noswapfile
set autoindent
set laststatus=2
set statusline=%<%f\ %h%m%r%w%y%=%-14.([%L]\ \ \ %l,%c%V%)\ %P
set cursorline
color desert
"hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLine   cterm=NONE ctermbg=7 ctermfg=NONE
highlight ColorColumn ctermbg=white ctermfg=white
match ColorColumn /\%81v.*/
highlight LineNr ctermfg=white

let g:ctrlp_map = '<c-a>'
let g:ctrlp_cmd = 'CtrlP'
inoremap <C-Space> <c-p>
set runtimepath^=~/.vim/bundle/ctrlp.vim 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|build\|node_modules\|log\|tmp$|\xcshareddata\',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
