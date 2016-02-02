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
Plugin 'rking/ag.vim'
Plugin 'raichoo/haskell-vim'  " Haskell syntax

call vundle#end()
filetype plugin indent on

"General Config
"==============
let mapleader="\<space>"
set noerrorbells
set autoindent
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set showmode
set backspace=indent,eol,start
set showcmd
set autoread " Reload on change
set cursorline
set number
syntax on

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set wildmenu
set hidden

autocmd FileType haskell setl tabstop=8 softtabstop=4 shiftwidth=4 expandtab shiftround

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

"Change TLD between biz and com
"=======================
map <leader>com :%s/\.biz/\.com/g<CR>
map <leader>biz :%s/\.com/\.biz/g<CR>

"Change environment between ca and us
"=======================
map <leader>us :%s/ca\./us\./g<CR>
map <leader>ca :%s/us\./ca\./g<CR>

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

"Grunt commands
"==============
noremap <Leader>grd :!grunt dist<CR><CR>
noremap <Leader>grl :!grunt lint<CR>
noremap <Leader>grt :!grunt test<CR>

"Git
"===
noremap <Leader>ga :!git add -u<CR>
noremap <Leader>gap :!git add --patch<CR>
noremap <Leader>gc :!git commit -v<CR>
noremap <Leader>gp :!git push<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>

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
