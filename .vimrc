" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
"set nobackup
" スワップファイルを作らない
"set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" スワップファイルを作るディレクトリ
set swapfile
set directory=~/.vim/tmp
" バックアップファイルを作るディレクトリ
set backup
set backupdir=~/.vim/tmp
if version >= 704
" undo の情報ファイルを作るディレクトリ
  set undofile
  set undodir=~/.vim/tmp
endif


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" 不可視文字を可視化(タブが「?-」と表示される)
"set list listchars=tab:\?\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set nowrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

if has('win32')
  "起動時HOMEに移動
  cd $HOME
endif

nnoremap [unite]    <Nop>
nmap     <Space>u [unite]
nnoremap <silent> [unite]f   :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]b   :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]r   :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]m   :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]c   :<C-u>Unite bookmark<CR>
nnoremap <silent> [unite]a   :<C-u>UniteBookmarkAdd<CR>

"-----------------------------------------------------------------------------
" GNU GLOBAL(gtags)
"-----------------------------------------------------------------------------
" 検索結果Windowを閉じる
nnoremap <C-q> <C-w><C-w><C-w>q
" Grep 準備
nnoremap <C-g> :Gtags -g
" このファイルの関数一覧
nnoremap <C-l> :Gtags -f %<CR>
" カーソル以下の定義元を探す
nnoremap <C-j> :Gtags <C-r><C-w><CR>
" カーソル以下の使用箇所を探す
nnoremap <C-k> :Gtags -r <C-r><C-w><CR>
" 次の検索結果
nnoremap <C-n> :cn<CR>
" 前の検索結果
nnoremap <C-p> :cp<CR>
"-----------------------------------------------------------------------------

"-----------------------------------------------------------------------------
" ctrlp
"-----------------------------------------------------------------------------
"" キャッシュディレクトリ
"let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
"
"" キャッシュを終了時に削除しない
"let g:ctrlp_clear_cache_on_exit = 0
"
"" 遅延再描画
"let g:ctrlp_lazy_update = 1
"
"" ルートパスと認識させるためのファイル
"let g:ctrlp_root_markers = ['Gemfile', 'pom.xml', 'build.xml']
"
"" CtrlPのウィンドウ最大高さ
"let g:ctrlp_max_height = 20
"
"" 無視するディレクトリ
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }


" 日付挿入
inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=c:/Users/passo/vimfiles/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('c:/Users/passo/vimfiles/bundles')
  call dein#begin('c:/Users/passo/vimfiles/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('c:/Users/passo/vimfiles/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  " ファイルオープンを便利に
  call dein#add('Shougo/unite.vim')
  "call dein#add('Shougo/Denite.nvim')
  " Unite.vimで最近使ったファイルを表示できるようにする
  call dein#add('Shougo/neomru.vim')"
  call dein#add('tomasr/molokai')
  call dein#add('Shougo/vimfiler')
  call dein#add('lighttiger2505/gtags.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('kshenoy/vim-signature')
  call dein#add('plasticboy/vim-markdown')
  "call dein#add('ctrlpvim/ctrlp.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"カラースキームの設定
colorscheme molokai
set t_Co=256

