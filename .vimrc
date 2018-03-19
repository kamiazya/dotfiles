set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set number
syntax on


" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'

" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'

" Filer
NeoBundle 'Shougo/vimfiler'

" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'fatih/vim-go'

NeoBundle 'w0ng/vim-hybrid'

" TypeScript
" NeoBundle 'Quramy/tuguyomi'


NeoBundle 'editorconfig/editorconfig-vim'

NeoBundle 'itchyny/lightline.vim'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" マークダウンのプレビュー機能
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Firefox'


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/
