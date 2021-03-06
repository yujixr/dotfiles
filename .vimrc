" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')
" Plug 'joshdick/onedark.vim'
" Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

" File encoding
set modifiable
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Show settings
set number
set title
set cursorline
set showmatch
set list
set visualbell
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
set virtualedit=onemore
set clipboard=unnamedplus
set autoread " Automatically read modified file

" Using the mouse on a terminal.
if has('mouse')
  set mouse=a
  if has('mouse_sgr')
    set ttymouse=sgr
  elseif v:version > 703 || v:version is 703 && has('patch632') " I couldn't use has('mouse_sgr') :-(
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif

" Use line cursor
if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

" Search config
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch

" Color theme
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 0
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1
" set background=light
colorscheme nord

" Powerline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

" LSP (Language Server Protocol)
let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_text_edit_enabled = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1
let g:asyncomplete_popup_delay = 200

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']

" tmuxline
let g:tmuxline_preset = 'powerline'
let g:tmuxline_theme = 'airline'
