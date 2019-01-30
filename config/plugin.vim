" Plugin Configuration
call plug#begin('~\vimfiles\autoload')
" UI
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'cormacrelf/vim-colors-github'
Plug 'NLKNguyen/papercolor-theme'
" File Tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'xuyuanp/nerdtree-git-plugin'
" Tag Tree
Plug 'majutsushi/tagbar'
" Version Control
" Plug 'airblade/vim-gitgutter'
" Searcher
Plug 'Yggdroot/LeaderF'
Plug 'D:\program\fzf\fzf.exe'
Plug 'junegunn/fzf.vim'
" Better Editor
Plug 'terryma/vim-multiple-cursors'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
" Plug 'tmhedberg/simpylfold'
call plug#end()

" Airline
" let g:airline_theme='codedark'       " Theme of airline.
let g:airline#extensions#tabline#enabled = 1 " Enable tabline.
let g:airline#extensions#tabline#tab_nr_type = 1 " Tab number.
let g:airline#extensions#tabline#show_tab_nr = 1 " Tab number.
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

" NerdTree
let NERDTreeShowHidden = 1             " Show hidden file.
let NERDTreeShowLineNumbers = 0        " Show line number.
let NERDTreeWinPos = 'left'            " Postion of nerdtree.
let NERDTreeWinSize = 30               " Size of nerdtree.
let NERDTreeIgnore = ['\.pyc$', '\~$']   " Ignore files in NERDTree.
let NERDTreeMouseMode = 3
map <leader><leader>e :NERDTreeToggle<CR> " Shortcut for open nerdtree

" IndentLine
let g:indentLine_enabled=1             " Start indentLine.
let g:indentLine_char='|'              " Set sign for number of tabs.
" let g:indentLine_leadingSpaceEnabled=1 " Show leading spaces.
let g:indentLine_leadingSpaceChar='·'  " Set sign for leading spaces.
let g:indentLine_fileTypeExclude = ['nerdtree'] " Fix the problem of indentation in nerdtree.

" Tagbar
let g:tagbar_ctags_bin='D:\program\ctags\ctags.exe'
map <leader><leader>t :TagbarToggle<CR>

" NerdCommenter
let g:NERDSpaceDelims=1                " Put one space between comment and first word

" EasyMotion
let g:EasyMotion_do_mapping = 0        " Disable default mappings
let g:EasyMotion_smartcase = 1         " Smart case
" let g:EasyMotion_startofline = 0     " Keep cursor colum when JK motion
" map f <Plug>(easymotion-prefix)
" map ff <Plug>(easymotion-s)
nmap <leader>w <Plug>(easymotion-overwin-w)
nmap <leader>e <Plug>(easymotion-overwin-e)
" map fh <Plug>(easymotion-linebackward)
nmap <leader>j <Plug>(easymotion-j)
nmap <leader>k <Plug>(easymotion-k)
" map fl <Plug>(easymotion-lineforward)
" map f. <Plug>(easymotion-repeat)

" vim-multiple-cursors
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0

" Ack.vim & Ag
if executable('ag.exe')
  let g:ackprg = 'ag --vimgrep'
endif

" LeaderF
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_Ctags = "D:\\program\\ctags\\ctags.exe"
let g:Lf_ReverseOrder = 1
let g:Lf_WindowHeight = 0.30
noremap <C-S-o> :LeaderfFunction<Enter>
let g:Lf_StlPalette = {
        \   'stlName': {
        \       'gui': 'bold',
        \       'font': 'NONE',
        \       'guifg': '#eeeeee',
        \       'guibg': '#005f87',
        \       'cterm': 'bold',
        \       'ctermfg': '22',
        \       'ctermbg': '157'
        \   },
        \   'stlCategory': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#eeeeee',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '210'
        \   },
        \   'stlNameOnlyMode': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#E8ED51',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '227'
        \   },
        \   'stlFullPathMode': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#eeeeee',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '147'
        \   },
        \   'stlFuzzyMode': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#E8ED51',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '227'
        \   },
        \   'stlRegexMode': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#7FECAD',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '121'
        \   },
        \   'stlCwd': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#EBFFEF',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': '195',
        \       'ctermbg': '241'
        \   },
        \   'stlBlank': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': 'NONE',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': 'NONE',
        \       'ctermbg': '237'
        \   },
        \   'stlLineInfo': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#eeeeee',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '195'
        \   },
        \   'stlTotal': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#eeeeee',
        \       'guibg': '#005f87',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '149'
        \   }
        \ }

" vim-colors-github
let g:github_colors_soft = 1           " use a slightly darker background, like GitHub inline code blocks
let g:github_colors_block_diffmark = 0 " more blocky diff markers in signcolumn (e.g. GitGutter)
