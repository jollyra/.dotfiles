set nocompatible              " use vim defaults
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VunleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/sonictemplate-vim.git'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

" General Config
let mapleader="\<space>"
set noerrorbells
set autoindent                                     " set auto-indenting on for programming
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set showmode
set backspace=indent,eol,start
set showcmd                                        " display incomplete commands
set autoread                                       " Reload on change
set cursorline
set number                                         " show line number
set ruler                                          " show the current row and column
set scrolloff=3                                    " keep 3 lines when scrolling
set backspace=indent,eol,start                     " make that backspace key work the way it should
syntax on                                          " turn syntax highlighting on by default
set noswapfile                                     " don't use swapfile
set nobackup                                       " don't create annoying backup files
set splitright                                     " split vertical windows right to the current windows
set splitbelow                                     " split horizontal windows below to the current windows
set encoding=utf-8                                 " set default encoding to UTF-8
set wildmenu
set hidden

" Better Search
set ignorecase                                     " ignore case when searching
set smartcase                                      " no ignorecase if Uppercase char present
set incsearch                                      " jump to matches when entering regexp
set hlsearch                                       " highlight searches
set gdefault                                       " Search globally by default`

autocmd FileType haskell setl tabstop=8 softtabstop=4 shiftwidth=4 expandtab shiftround

" Disable Ex mode
nnoremap Q <Nop>

" Escaping
imap jk <Esc>

" Show nice tabs
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Styling
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Buffer Helpers
map <leader>b :buffers<CR>:buffer<space>
map <leader>l :bnext<CR>
map <leader>h :bprev<CR>

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Enter saves file
nnoremap <cr> :w<cr>

nnoremap Y y$

" Git
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>

" Search for current word in Silver Searcher
nnoremap <leader>K :Ag<cr>

"ctrlP
let g:ctrlp_lazy_update = 1         "don't update match window until typing stops
let g:ctrlp_clear_cache_on_exit = 1 "enable cross-session caching by not deleting cache files
let g:ctrlp_mruf_relative = 0       "only show mru files in the CWD
let g:ctrlp_custom_ignore = 'logs\|target\|node_modules\|DS_Store\|git\|venv\|bower_components'
set wildignore+=*.css               " css files are all generated from less files
let g:ctrlp_working_path_mode = 'wr' " now I can search for files from dev dir instead of project root
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:25'
let g:ctrlp_max_files = 100000  " larger than default so I can seach from dev dir

"Dash
nmap <silent> <leader>d <Plug>DashSearch

"Ensure EditorConfig works well with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
