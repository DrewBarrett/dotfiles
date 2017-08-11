" enable syntax highlighting
syntax enable
filetype indent plugin on
"
" " show line numbers
set number
"
" " set tabs to have 4 spaces
set ts=4
"
" " indent when moving to the next line while writing code
set autoindent
"
" " expand tabs into spaces
set expandtab
"
" " when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
"
"
" " show the matching part of the pair for [] {} and ()
set showmatch
"
" " enable all Python syntax highlighting features
" " let python_highlight_all = 0
set background=dark
set backspace=indent,eol,start

" " vim-plug section
call plug#begin()

Plug 'ctrlpvim/ctrlp.vim'

call plug#end()
