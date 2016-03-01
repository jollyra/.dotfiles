set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VunleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/sonictemplate-vim.git'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
filetype plugin indent on

"General Config
let mapleader="\<space>"
set noerrorbells
set autoindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
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

"Disable Ex mode
nnoremap Q <Nop>

"Escaping
imap jk <Esc>

"Show nice tabs
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

"Styling
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"Better Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set gdefault  " Search globally by default`


"Explore file like a sir
map <leader>e :Lexplore<CR>

"Buffer Helpers
map <leader>b :buffers<CR>:buffer<space>
map <leader>l :bnext<CR>
map <leader>h :bprev<CR>

"Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"Enter saves file
nnoremap <cr> :w<cr>

"Grunt commands
noremap <Leader>grd :!grunt dist<CR><CR>
noremap <Leader>grl :!grunt lint<CR>
noremap <Leader>grt :!grunt test<CR>

"Git
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>

"Change TLD between biz and com
map <leader>com :%s/\.biz/\.com/g<CR>
map <leader>biz :%s/\.com/\.biz/g<CR>

"Change environment between ca and us
map <leader>us :%s/ca\./us\./g<CR>
map <leader>ca :%s/us\./ca\./g<CR>

"Search for current word in Silver Searcher
nnoremap <leader>K :Ag<cr>

"Vim-airline
let g:airline_theme='powerlineish'
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
set ttimeoutlen=50

"ctrlP
let g:ctrlp_lazy_update = 1  "Don't update match window until typing stops
let g:ctrlp_clear_cache_on_exit = 1  "Enable cross-session caching by not deleting cache files
let g:ctrlp_mruf_relative = 0  "Only show mru files in the CWD
let g:ctrlp_custom_ignore = 'logs\|target\|node_modules\|DS_Store\|git'

"Dash
nmap <silent> <leader>d <Plug>DashSearch

"Sonictemplate custom template dir
let g:sonictemplate_vim_template_dir = '$HOME/repos/code-templates'

"Ensure EditorConfig works well with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
