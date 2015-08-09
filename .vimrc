set shell=/bin/bash
let mapleader = ","
let maplocalleader = ","

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'hynek/vim-python-pep8-indent'

call vundle#end()

filetype plugin indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=1000
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set hlsearch
set incsearch		" do incremental searching

set tabstop=2
set shiftwidth=2
set expandtab

set showmatch

set incsearch

set nobackup
set nowritebackup
set noswapfile

nmap \ <C-w><C-w>
nmap \| <C-w>W
nmap <tab> <C-w>
nmap ; :

" This makes a near-simultaneous press of J and K do the same thing as Escape.
inoremap jk <esc>
set tm=200

set number
autocmd BufWritePre * :%s/\s\+$//e
au BufNewFile,BufRead *.less set filetype=less

if has("gui_running")
  set guioptions=-t
endif

syntax on
" filetype on
" filetype plugin on
" filetype indent on

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
