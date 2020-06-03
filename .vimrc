" Encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Show settings
syntax on
set number
set title
set showmatch
set showcmd
set t_Co=256

" Input settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent

" Search config
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" dein.vim
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('tomasr/molokai')
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
colorscheme molokai
