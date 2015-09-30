set textwidth=0 " 一行に長い文章を書いていても自動折り返しをしない
set nobackup " バックアップ取らない
set autoread " 他で書き換えられたら自動で読み直す
set noswapfile " スワップファイル作らない
set hidden " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions=lmoq " テキスト整形オプション，マルチバイト系を追加
set vb t_vb= " ビープをならさない
set whichwrap=b,s,h,l,<,>,[,] " カーソルを行頭、行末で止まらないようにする
set showcmd " コマンドをステータス行に表示
set showmode " 現在のモードを表示
set colorcolumn=80 "80文字のとろこに線を引く
set expandtab " Tabキーを空白に変換
set wrapscan " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch " インクリメンタルサーチ
set hlsearch " 検索文字をハイライト
set laststatus=2 " 常にステータスラインを表示
set encoding=utf-8 " デフォルトエンコーディング
set number " 行番号を表示
set cursorline

" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=2
set shiftwidth=2"

set autoread
execute pathogen#infect()
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set runtimepath^=~/.vim/bundle/ctrlp.vim
:map <F5> R

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

" 括弧/クォートを補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" CTRL-hjklでウィンドウ移動"

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

map <C-Space> <C-w><C-w>

map <C-w> <C-w><C-w>
" インサートモードでCTRL-hjklで移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" NeoBundl
"source ~/dotfiles/.vimrc.neobundle
" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 set smartindent
 set tabstop=2
 set shiftwidth=2
 set expandtab

"":set mouse=a

 :map <Tab-w> <C-w>w<C-w>w
 :map <C-a> GVgg
 :map <C-n> :enew
 :map <C-o> :e . <Enter>
 :map <C-s> :w <Enter>
 :map <C-c> y
 :map <C-v> p
 :map <C-x> d
 :map <C-z> u
 :map <C-t> :tabnew <Enter>
 :map <C-i> >>
 :map <C-f> /
 :map <F3> n
 :map <C-h> :%s/
 :map <S-t> vat
 :map <S-T> vit
 :map <S-{> vi{
 :map <S-(> vi(
 :map <S-[> vi[]]))}}

"Automaticly reload when file change"
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

highlight ColorColumn ctermbg=white ctermfg=white

match ColorColumn /\%81v.*/

nnoremap ; :
nnoremap j gj
nnoremap k gk
