" Plugin Configuration
call plug#begin('~\vimfiles\autoload')
" UI
" Plug 'Yggdroot/indentLine'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sts10/vim-pink-moon'
" File Tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'Shougo/defx.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'xuyuanp/nerdtree-git-plugin'
" Tag Tree
Plug 'majutsushi/tagbar'
" Version Control
Plug 'airblade/vim-gitgutter'
" Searcher
Plug 'Yggdroot/LeaderF'
" Plug 'D:\program\fzf\fzf.exe'
" Plug 'junegunn/fzf.vim'
" Language Support
Plug 'davidhalter/jedi-vim'
" Plug 'ludovicchabant/vim-gutentags'
" Better Editor
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/VOoM'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-python/python-syntax'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'leshill/vim-json'
Plug 'editorconfig/editorconfig-vim'
" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'
Plug 'lvht/tagbar-markdown'
" Plug 'tmhedberg/simpylfold'
" Completetion

call plug#end()

" NerdTree
let NERDTreeShowHidden = 1             " Show hidden file.
let NERDTreeShowLineNumbers = 0        " Show line number.
let NERDTreeWinPos = 'left'            " Postion of nerdtree.
let NERDTreeWinSize = 30               " Size of nerdtree.
let NERDTreeIgnore = ['\.pyc$', '\~$']   " Ignore files in NERDTree.
let NERDTreeMouseMode = 3
map <leader><leader>e :NERDTreeToggle<CR> " Shortcut for open nerdtree

" IndentLine
let g:indentLine_noConcealCursor=""
let g:indentLine_enabled=1             " Start indentLine.
let g:indentLine_char='|'              " Set sign for number of tabs.
let g:indentLine_leadingSpaceEnabled=1 " Show leading spaces.
let g:indentLine_leadingSpaceChar='·'  " Set sign for leading spaces.
let g:indentLine_fileTypeExclude = ['nerdtree'] " Fix the problem of indentation in nerdtree.
let g:vim_json_syntax_conceal = 0

" Tagbar
let g:tagbar_ctags_bin="D:\\program\\ctags\\ctags.exe"
let g:tagbar_sort=0
map <leader><leader>t :TagbarToggle<CR>
" let g:tagbar_type_markdown = {
"     \ 'ctagstype': 'markdown',
"     \ 'ctagsbin' : '~\\vimfiles\\markdown2ctags.py',
"     \ 'ctagsargs' : '-f - --sort=yes --sro=»',
"     \ 'kinds' : [
"         \ 's:sections',
"         \ 'i:images'
"     \ ],
"     \ 'sro' : '»',
"     \ 'kind2scope' : {
"         \ 's' : 'section',
"     \ },
"     \ 'sort': 1,
" \ }
" let g:tagbar_type_markdown = {
"   \ 'ctagstype' : 'markdown',
"   \ 'kinds' : [
"       \ 'h:Heading_L1',
"       \ 'i:Heading_L2',
"       \ 'k:Heading_L3'
"   \ ]
" \ }

" NerdCommenter
let g:NERDSpaceDelims=1                " Put one space between comment and first word
nnoremap <leader>/ :NERDCommenterToggle<Enter>

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

" LeaderF
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_Ctags = "D:\\program\\ctags\\ctags.exe"
let g:Lf_ReverseOrder = 1
let g:Lf_WindowHeight = 0.30
noremap <leader>o :LeaderfBufTag<Enter>
noremap <leader>r :LeaderfMru<Enter>
noremap <leader>l :LeaderfLine<Enter>
let g:Lf_StlPalette = {
        \   'stlName': {
        \       'gui': 'bold',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
        \       'cterm': 'bold',
        \       'ctermfg': '22',
        \       'ctermbg': '157'
        \   },
        \   'stlCategory': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
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
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
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
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
        \       'cterm': 'NONE',
        \       'ctermfg': '195',
        \       'ctermbg': '241'
        \   },
        \   'stlBlank': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': 'NONE',
        \       'guibg': '#fabd2f',
        \       'cterm': 'NONE',
        \       'ctermfg': 'NONE',
        \       'ctermbg': '237'
        \   },
        \   'stlLineInfo': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '195'
        \   },
        \   'stlTotal': {
        \       'gui': 'NONE',
        \       'font': 'NONE',
        \       'guifg': '#000000',
        \       'guibg': '#fabd2f',
        \       'cterm': 'NONE',
        \       'ctermfg': '16',
        \       'ctermbg': '149'
        \   }
        \ }

" vim-colors-github
let g:github_colors_soft = 1           " use a slightly darker background, like GitHub inline code blocks
let g:github_colors_block_diffmark = 0 " more blocky diff markers in signcolumn (e.g. GitGutter)

" gruvbox
let g:gruvbox_contrast_light="soft"

" python-syntax
let g:python_highlight_all = 1
let g:python_version_2 = 1

" Jedi
let g:jedi#completions_command = "<C-;>"
let g:jedi#goto_definitions_command = "gd"
let g:jedi#rename_command = "<leader>r"
