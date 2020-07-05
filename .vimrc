" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
call plug#end()

" File encoding
set modifiable
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Show settings
colorscheme molokai
set number
set title
set showmatch
set shortmess+=I " Don't show startup message
set t_Co=256 " 256 color
set ttyfast " Fast rendering
set ttimeoutlen=50 " Speed up INSERT -> NORMAL

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
set autoread " Automatically read modified file

" Search config
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'

" LSP (Language Server Protocol)
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1
