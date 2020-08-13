
set encoding=utf-8
set number
set relativenumber
set signcolumn=number

set hidden
set nobackup
set nowritebackup

set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set undolevels=1000


set cmdheight=2
set updatetime=300

set shortmess+=c

filetype plugin indent on

runtime ./plug.vim


set termguicolors
colorscheme solarized8


:autocmd BufNewFile *.cpp 0r ~/.tpl/tpl.cpp
