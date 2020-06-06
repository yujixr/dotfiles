set nocompatible

" Encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Show settings
syntax on
set number
set title
set showmatch
set shortmess+=I "  Don't show startup message
set t_Co=256
set ttyfast

" Menu settings
set wildmenu
set wildmode=full
set showcmd
set cmdheight=1
set laststatus=2

" Input settings
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent
set clipboard=unnamedplus
set autoread

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

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml('~/dotfiles/dein.toml')
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
colorscheme molokai
