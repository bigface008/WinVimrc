" UI settings
set nu                       " Show line number
" set relativenumber           " Show relative line number
set ruler                    " Set ruler
set cursorline
" set cursorcolumn

" Set font type
" set guifont=Source_Code_Variable:h11:b:cDEFAULT
" set guifont=Source_Code_Variable:h11
" set guifont=Courier_new:h11:b:cDEFAULT
" set guifont=DejaVu_Sans_Mono_for_Powerline:h11
" set guifont=Fantasque_Sans_Mono:h12
set guifont=Microsoft_YaHei_Mono:h11
" set guifont=InputMono:h11
" set guifont=Consolas:h11
" set guifont=CamingoCode:h11
" set guifont=Fira_Code_Regular:h10
" set guifontwide=黑体:h10
" set guifont=Monaco:h11

" Set cursor type
" set gcr=a:block-blinkon0     " No flashing cursor
set gcr=a:block-blinkon0,i:ver5-blinkon0

" Show tab and special space
set list
set listchars=tab:>\ ,trail:.,extends:>,precedes:<,nbsp:.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" GUI config
if has("gui_running")
au GUIEnter * simalt ~x    " Maximize gui window
set lines=35
set columns=90
set background=light         " Set background
colorscheme pink-moon        " Set theme
set cc=80                    " Hightlight column 80
set guioptions-=m            " Hide menu bar
set guioptions-=T            " Hide tool bar
set guioptions-=L            " Hide left scroll bar
set guioptions-=r            " Hide right scroll bar
" set guioptions-=b          " Hide bottom scroll bar
" set showtabline=0          " Hide tab line
endif

set statusline=
" set statusline+=%#LineNr#
" set statusline+=%#PmenuSel#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
" set statusline+=%#LineNr#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

" Tabline.
" if exists("+showtabline")
"
" " Rename tabs to show tab number.
" " (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
"
" function! MyTabLine()
"     let s = ''
"     let t = tabpagenr()
"     let i = 1
"     while i <= tabpagenr('$')
"         let buflist = tabpagebuflist(i)
"         let winnr = tabpagewinnr(i)
"         let s .= '%' . i . 'T'
"         let s .= (i == t ? '%1*' : '%2*')
" 
"         " let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
"         " let s .= ' '
"         let s .= (i == t ? '%#TabNumSel#' : '%#TabNum#')
"         let s .= ' ' . i . ' '
"         let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
" 
"         let bufnr = buflist[winnr - 1]
"         let file = bufname(bufnr)
"         let buftype = getbufvar(bufnr, '&buftype')
" 
"         if buftype == 'help'
"             let file = 'help:' . fnamemodify(file, ':t:r')
" 
"         elseif buftype == 'quickfix'
"             let file = 'quickfix'
" 
"         elseif buftype == 'nofile'
"             if file =~ '\/.'
"                 let file = substitute(file, '.*\/\ze.', '', '')
"             endif
" 
"         else
"             let file = pathshorten(fnamemodify(file, ':p:~:.'))
"             if getbufvar(bufnr, '&modified')
"                 let file = '+' . file
"             endif
" 
"         endif
" 
"         if file == ''
"             let file = '[No Name]'
"         endif
" 
"         let s .= ' ' . file
" 
"         let nwins = tabpagewinnr(i, '$')
"         if nwins > 1
"             let modified = ''
"             for b in buflist
"                 if getbufvar(b, '&modified') && b != bufnr
"                     let modified = '*'
"                     break
"                 endif
"             endfor
"             let hl = (i == t ? '%#WinNumSel#' : '%#WinNum#')
"             let nohl = (i == t ? '%#TabLineSel#' : '%#TabLine#')
"             let s .= ' ' . modified . '(' . hl . winnr . nohl . '/' . nwins . ')'
"         endif
" 
"         if i < tabpagenr('$')
"             let s .= ' %#TabLine#|'
"         else
"             let s .= ' '
"         endif
" 
"         let i = i + 1
" 
"     endwhile
" 
"     let s .= '%T%#TabLineFill#%='
"     let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
"     return s
" 
" endfunction
" 
" " set showtabline=1
" highlight! TabNum term=bold,underline cterm=bold,underline ctermfg=1 ctermbg=7 gui=bold,underline guibg=LightGrey
" highlight! TabNumSel term=bold,reverse cterm=bold,reverse ctermfg=1 ctermbg=7 gui=bold
" highlight! WinNum term=bold,underline cterm=bold,underline ctermfg=11 ctermbg=7 guifg=DarkBlue guibg=LightGrey
" highlight! WinNumSel term=bold cterm=bold ctermfg=7 ctermbg=14 guifg=DarkBlue guibg=LightGrey
" 
" set tabline=%!MyTabLine()
" 
" endif " exists("+showtabline")

