" Plugin Configuration
call plug#begin('~\vimfiles\autoload')
" UI
Plug 'Yggdroot/indentLine'
Plug 'cormacrelf/vim-colors-github'
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
" Language Support
Plug 'ludovicchabant/vim-gutentags'
" Better Editor
Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
" Plug 'tmhedberg/simpylfold'
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
let g:indentLine_enabled=1             " Start indentLine.
let g:indentLine_char='|'              " Set sign for number of tabs.
" let g:indentLine_leadingSpaceEnabled=1 " Show leading spaces.
let g:indentLine_leadingSpaceChar='·'  " Set sign for leading spaces.
let g:indentLine_fileTypeExclude = ['nerdtree'] " Fix the problem of indentation in nerdtree.

" Tagbar
let g:tagbar_ctags_bin="D:\\program\\ctags\\ctags.exe"
let g:tagbar_sort=0
map <leader><leader>t :TagbarToggle<CR>
" let g:tagbar_type_markdown = {
"     \ 'ctagstype': 'markdown',
"     \ 'ctagsbin' : '~\vimfiles\markdown2ctags.py',
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
    " \ 'ctagstype' : 'markdown',
    " \ 'kinds' : [
        " \ 'h:Heading_L1',
        " \ 'i:Heading_L2',
        " \ 'k:Heading_L3'
    " \ ]
" \ }

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
noremap <leader>o :LeaderfFunction<Enter>
noremap <leader>r :LeaderfMru<Enter>
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

" gruvbox
let g:gruvbox_contrast_light='soft'

" clang_complete
" path to directory where library can be found
let g:clang_library_path='D:\\program\\LLVM\\bin'
" or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'

" YouCompleteMe
" set tags=./.tags;,.tags,tags,/home/dashi/workspace/lib_tags/systags
" let g:ycm_server_python_interpreter='D:\\program\\Python\\Python27'
" let g:ycm_collect_identifiers_from_tags_files=1
" let g:ycm_confirm_extra_conf=1
" " let g:ycm_extra_conf_globlist=['~/workspace/*', '!~/*']
" let g:ycm_filepath_completion_use_working_dir=1
" " let g:ycm_global_ycm_extra_conf='~/.vim/source/'
" " let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_add_preview_to_completeopt=0
" let g:ycm_min_num_identifier_candidate_chars=2
" " let g:ycm_autoclose_preview_window_after_completion=1
" set completeopt=menu,menuone
" let g:ycm_complete_in_strings=1
" let g:ycm_semantic_triggers =  {
            " \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            " \ 'cs,lua,javascript': ['re!\w{2}'],
            " \ }
" let g:ycm_filetype_whitelist = { 
            " \ "h":1,
            " \ "hpp":1,
            " \ "c":1,
            " \ "cpp":1, 
            " \ "objc":1,
            " \ "sh":1,
            " \ "zsh":1,
            " \ "zimbu":1,
            " \ }
" let g:ycm_filetype_blacklist={
            " \ 'markdown' : 1,
            " \ 'text' : 1,
            " \ 'tagbar' : 1,
            " \ 'infolog' : 1,
            " \}
" let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" vim-gutentags


