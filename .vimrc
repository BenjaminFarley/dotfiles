set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
Plugin 'altercation/vim-colors-solarized'
Plugin 'rodjek/vim-puppet'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'hashivim/vim-hashicorp-tools'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'fatih/vim-hclfmt'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Set font according to system
if has("mac") || has("macunix")
  set gfn=Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
  set gfn=Hack:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\Mono:h11
elseif has("gui_gtk2")
  set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\Mono\ 11
elseif has("linux")
  set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\Sans\ Mono\ 11
elseif has("unix")
  set gfn=Monospace\ 11
endif

" Open MacVim in fullscreen mode
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Everything else
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Leader
let mapleader=","

"Resolution to lag issues
set lazyredraw
set ttyfast

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" remap CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Allow hidden buffers
set hidden

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" No Backups of Vim Files (Due to it all being in source control)
set nobackup
set nowb
set noswapfile

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> " Toggle tabs and EOL

set relativenumber
set scrolloff=999
nnoremap <C-U> 11kzz
nnoremap <C-D> 11jzz
nnoremap j jzz
nnoremap k kzz
nnoremap # #zz
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz
" Color scheme (terminal)
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
