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
inoremap <C-S-CR> <Esc>O

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

