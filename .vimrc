set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugins
"========
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on

"General Config
"==============
let mapleader="\<space>"
set noerrorbells
set tabstop=4 shiftwidth=4 expandtab
set showmode
set backspace=indent,eol,start
set showcmd
set autoread " Reload on change
set autoindent
set cursorline
set number
syntax on

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set wildmenu

"Escaping
"========
imap jk <Esc>
imap kj <Esc>

"Show nice tabs
"===============
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"Styling
"=======
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"Better Search
"=============
set ignorecase
set smartcase
set incsearch
set hlsearch

"Explore file like a sir
"=======================
map <leader>e :Lexplore<CR>

"Buffer Helpers
"===========
map <leader>b :buffers<CR>:buffer<space>
map <leader>l :bnext<CR>
map <leader>h :bprev<CR>

"Vmap for maintain Visual Mode after shifting > and <
"====================================================
vmap < <gv
vmap > >gv

"Git Gutter
"==========
let g:gitgutter_map_keys = 0 " Disable all key maps

"Vim-airline
"===========
let g:airline_theme='powerlineish'
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set ttimeoutlen=50

"JSHint
"======
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_conf = '~/.jshintrc'
