""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load builtin scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable($VIMRUNTIME."/vimrc_example.vim")
  source $VIMRUNTIME/vimrc_example.vim
endif

" load mswin.vim if has('win32')
if has("win32") && filereadable($VIMRUNTIME."/mswin.vim")
  source $VIMRUNTIME/mswin.vim
  nnoremap <C-V> <C-V>
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on the WiLd menu
set wildmenu

" always show line number
set nu

" turn backup off, since most stuff is in svn, git et.c anyway...
set nobackup
set nowb
set noswapfile

" auto read when file changed
set autoread

" always display status line
set laststatus=2

" use utf-8 for a new file 
set fileencoding=utf-8
" autodetect encodings when edit an existing file
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load extra scripts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:path=expand('<sfile>:p:h')
execute 'source ' . s:path . '/mappings.vim'
execute 'source ' . s:path . '/extra.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load pathogen plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(s:path . "/autoload/pathogen.vim")
  execute pathogen#infect()
endif

