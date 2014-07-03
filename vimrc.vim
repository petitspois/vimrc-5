" Some basic settings
set nu                  " show line number
set nobackup            " do not keep a backup file
set noswapfile          " do not keep a swap file
set autoread            " auto read when file changed

set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set hlsearch            " do highlight searching

set nowrap              " default nowrap
set autoindent          " default indent settings
set pastetoggle=<F2>


set modeline            " always display status line
set laststatus=2

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

let mapleader=","       " set mapleader
let s:path=expand('<sfile>:p:h')

filetype plugin indent on
syntax enable

" Load extra settings
execute 'source ' . s:path . '/extra.vim'

" Load pathogen plugin
if filereadable(s:path . "/autoload/pathogen.vim")
  execute pathogen#infect()
endif

