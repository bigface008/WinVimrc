" Basic settings
syntax enable                " Enable syntax check
syntax on                    " Enable syntax highlighting
filetype on                  " Enable filetype check
filetype plugin indent on    " Load plugins according to detected filetype
set nocompatible             " Not compatible with Vi
set vb t_vb=                 " Stop bell
au GuiEnter * set t_vb=      " Stop screen shining
set nowrap                   " Display auto new line
" set wrap
set laststatus=2             " Always show statusline
set display=lastline         " Show as much as possible of the last line
set showmatch                " Show match bracket
set sidescroll=1             " Move horizontally smoothly
" set showmode               " Show current mode in command-line
set noshowmode               " No mode in command-line
set showcmd                  " Show already typed keys when more are expected
set hlsearch                 " Hightlight the search
set incsearch                " Move to fit position after each char input
set hidden                   " Swith between buffers without saving first
set clipboard=unnamed        " Use system clipboard
set backspace=indent,eol,start " Better backspace
set ttyfast                  " Fast redrawing
set lazyredraw               " Only redraw when necessary
" set novisualbell           " Something wrong
" set paste                  " Keep format when pasting, something wrong
set ignorecase               " Ignore case when searching
set autoread                 " Auto read file when changed
set autowrite                " Auto write file when changed
set updatetime=100           " Set updatetime

" Backup settings
" set nowritebackup          " No writeback when save file
" set nobackup               " No backup when save file
" set noswapfile             " No swapfile
set backup                   " Set backup files
set backupdir=~\vimfiles\files\backup
set backupext=-vimbackup
set backupskip=
set directory=~\vimfiles\files\swap " Set swap files
set updatecount=100
set undofile                 " Set undo files
set undodir=~\vimfiles\files\undo

" Tab and indent behavior settings
set tabstop=4                " Set lenght of tab to 4 spaces
set shiftwidth=4             " >> indents by 4 spaces
set softtabstop=4            " Tab key indents by 4 spaces
set expandtab                " Use spaces instead of tabs
set shiftround               " >> indents to next multiple of 'shiftwidth'
set autoindent               " Indent according to previous line
set smartindent              " Smart indent

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Code settings
" set termencoding=cp936
set encoding=utf-8
set fileencoding=utf-8
" " set fileencodings=utf-8,chinese,latin-1
" if has("win32")
" set fileencoding=chinese
" else
" set fileencoding=utf-8
" endif
source $VIMRUNTIME/delmenu.vim " Solve messy code of menu
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8 " Solve messy code of console

autocmd FileType json syntax match Comment +\/\/.\+$+

" Ctags
set tags=tags
set tags+=./tags	" add current directory's generated tags file

