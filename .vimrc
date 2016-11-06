set encoding=utf-8
syntax on
colorscheme desert

"NeoBundle Scripts-----------------------------
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/beta_chelsea/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/beta_chelsea/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimproc' " 非同期処理
NeoBundle 'Shougo/neocomplcache' " 入力補完
NeoBundle 'scrooloose/syntastic' " 構文エラーチェック
NeoBundle 'tpope/vim-rails' " Rails向けコマンド提供
NeoBundle 'tpope/vim-endwise' " end自動挿入
"NeoBundle 'tomtom/tcomment_vim' " コメント簡易挿入
NeoBundle 'thinca/vim-quickrun' " 簡易コード実行

" 見た目系プラグイン
NeoBundle 'nathanaelkane/vim-indent-guides' " インデントに色をつけて見やすく
NeoBundle 'vim-scripts/AnsiEsc.vim' " ログファイル色付け
NeoBundle 'kchmck/vim-coffee-script' " for .coffee
NeoBundle 'slim-template/vim-slim.git' " for .slim
NeoBundle 'elzr/vim-json' " for JSON
NeoBundle 'digitaltoad/vim-jade' " for Jade, TODO: $ sudo npm install -g jade
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}} " for javascript
NeoBundle 'vim-ruby/vim-ruby' " for ruby
NeoBundle 'nono/vim-handlebars' " for Handlebars

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

"行番号を表示する
set number
"不可視文字の表示
set lcs=tab:>.,trail:_,extends:\
set list
"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/vimbackup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"ヤンクやペーストが自動的にクリップボードを使用する
set clipboard=unnamed
"Vi互換をオフ
set nocompatible
"スワップファイル用のディレクトリ
set directory=$HOME/vimbackup
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"tab幅、シフト移動幅
set tabstop=2
set shiftwidth=2
"改行しない
set nowrap
" ハイライト検索
set hlsearch
"新しい行のインデントを現在行と同じにする
set autoindent
"検索をファイルの先頭へループしない
"set nowrapscan
"縦幅
"set lines=50
"横幅
"set columns=150
"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
"日本語入力をリセット
au BufNewFile,BufRead * set iminsert=0
"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=2 shiftwidth=2

"コマンドモードでIMEオフ
set imdisable
if has('gui_macvim')
    set transparency=50
endif

"neocomplcache-----------------------------
"AutoComplPopを無効にする
let g:acp_enableAtStartup = 0
"vim起動時に有効化
let g:neocomplcache_enable_at_startup = 1
"smart_caseを有効にする．大文字が入力されるまで大文字小文字の区別をなくす
let g:neocomplcache_enable_smart_case = 1
" CamelCase補完有効化
"let g:neocomplcache_enable_camel_case_completion = 1
"_を区切りとした補完を有効にする
let g:neocomplcache_enable_underbar_completion = 1
"シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplcache_min_syntax_length = 3
"日本語を収集しないようにする
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"リスト表示
let g:neocomplcache_max_list = 100
let g:neocomplcache_max_keyword_width = 20
"リストの最大幅を指定
let g:neocomplcache_max_filename_width = 25
"ctagsへのパス
let g:neocomplcache_ctags_program = '/opt/local/bin/ctags'
"tabで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
"区切り文字パターンの定義
if !exists('g:neocomplcache_delimiter_patterns')
	let g:neocomplcache_delimiter_patterns= {}
endif
let g:neocomplcache_delimiter_patterns.vim = ['#']
let g:neocomplcache_delimiter_patterns.cpp = ['::']
"End neocomplcache-------------------------

"neocomplcache-----------------------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
"End vim-indent-guides-------------------------

" Enable omni completion.
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript setl omnifunc=jscomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete
".mdファイルをMarkdownとして扱う
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
autocmd FileType markdown hi! def link markdownItalic LineNr
" coffeeファイルタイプ
autocmd BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.{jsx*} set filetype=javascript

