execute pathogen#infect()
execute pathogen#helptags()

map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <F5> :e<CR>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-w> <C-C>
map <C-w> <C-w><C-w>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge

"source ~/dotfiles/.vimrc.neobundle
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set nohlsearch
set noswapfile
set autoindent

syntax off
inoremap jk <Esc>
inoremap ;; <Esc>
highlight LineNr ctermfg=white
set laststatus=2
set statusline=%<%f\ %h%m%r%w%y%=%-14.([%L]\ \ \ %l,%c%V%)\ %P

let g:ctrlp_user_command = 'ag %s --ignore-case --nocolor --nogroup --hidden
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
            \ --ignore "**/*.pyc"
            \ -g ""'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'

highlight ColorColumn ctermbg=white ctermfg=white
match ColorColumn /\%81v.*/

set incsearch  " Search as characters are entered
set hlsearch  " Highlight matches

nnoremap ; :
nnoremap j gj
nnoremap k gk

source ~/.vim/bundle/comments.vim

