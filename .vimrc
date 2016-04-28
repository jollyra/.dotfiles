set nocompatible              " use vim defaults
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VunleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'rking/ag.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/sonictemplate-vim.git'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'

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

" Explore file like a sir
map <leader>e :NERDTreeToggle<CR>

" Buffer Helpers
map <leader>b :buffers<CR>:buffer<space>
map <leader>l :bnext<CR>
map <leader>h :bprev<CR>

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Enter saves file
nnoremap <cr> :w<cr>

" Grunt commands
noremap <Leader>grd :!grunt dist<CR><CR>
noremap <Leader>grl :!grunt lint<CR>
noremap <Leader>grt :!grunt test<CR>

" Git
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>

" Work environment shortcuts
map <leader>com :%s/\.biz/\.com/g<CR>
map <leader>biz :%s/\.com/\.biz/g<CR>
map <leader>us :%s/ca\./us\./g<CR>
map <leader>ca :%s/us\./ca\./g<CR>

" Search for current word in Silver Searcher
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
let g:ctrlp_lazy_update = 1         "don't update match window until typing stops
let g:ctrlp_clear_cache_on_exit = 1 "enable cross-session caching by not deleting cache files
let g:ctrlp_mruf_relative = 0       "only show mru files in the CWD
let g:ctrlp_custom_ignore = 'logs\|target\|node_modules\|DS_Store\|git\|venv\|bower_components'

"Dash
nmap <silent> <leader>d <Plug>DashSearch

"Sonictemplate custom template dir
let g:sonictemplate_vim_template_dir = '$HOME/repos/code-templates'

"Ensure EditorConfig works well with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
