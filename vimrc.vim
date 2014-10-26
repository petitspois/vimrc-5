" Load vimrc_example
if filereadable($VIMRUNTIME."/vimrc_example.vim")
  source $VIMRUNTIME/vimrc_example.vim
endif

" platform-dependent settings
if has("win32") && filereadable($VIMRUNTIME."/mswin.vim")
  source $VIMRUNTIME/mswin.vim
  nnoremap <C-V> <C-V>
endif

" Some other settings
set nu                  " always show line number
set nobackup            " do not keep a backup file
set noswapfile          " do not keep a swap file
set autoread            " auto read when file changed
set nowrap              " default nowrap

""  always display status line
set modeline
set laststatus=2

set pastetoggle=<F2>

set fileencoding=utf-8  " use utf-8 for a new file
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Load extra settings
let s:path=expand('<sfile>:p:h')
execute 'source ' . s:path . '/extra.vim'

" Load pathogen plugin
if filereadable(s:path . "/autoload/pathogen.vim")
  execute pathogen#infect()
endif

