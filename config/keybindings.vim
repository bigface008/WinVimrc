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

nnoremap j gj
nnoremap k gk
nnoremap <leader>s :w<Enter>

" Move faster between buffers.
noremap <leader>n :bn<Enter>
noremap <leader>p :bp<Enter>