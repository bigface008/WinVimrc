" Key bindings
let mapleader=' '            " Set leader key.

" Keybindings for insert mode.
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I
" inoremap <C-j> <Esc>ja
" inoremap <C-k> <Esc>ka
" inoremap <C-c><C-c> <Esc>o
" inoremap <C-c> <Esc>O
inoremap <C-CR> <Esc>o
inoremap <S-CR> <Esc>O

nnoremap j gj
nnoremap k gk
nnoremap <C-s> :w<Enter>

" Move faster between buffers.
" noremap <leader>n :bn<Enter>
" noremap <leader>p :bp<Enter>
noremap <C-Tab> :bn<Enter>
noremap <C-S-Tab> :bp<Enter> 

nnoremap <leader><leader>h :vertical help 
nnoremap <F2> :source %<Enter>

nnoremap <leader><leader>h :vertical help 
nnoremap <F2> :cd ~\vimfiles<Enter>
nnoremap <F5> :source %<Enter>

" Fullscreen.
map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>

" Close highlight for search result.
nnoremap <leader><leader>n :noh<Enter>

" Generate and refresh markdown outline.
nnoremap <leader><leader>m :Voom markdown<Enter>

" Use <C-v> to paste content in insert mode.
inoremap <C-v> <Esc>pa

" Map EasyAlign.
noremap = <Plug>(EasyAlign)
