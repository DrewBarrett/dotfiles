set nocompatible
" enable syntax highlighting
syntax enable
filetype indent plugin on
"
" " show line numbers
set number
"
" " set tabs to have 4 spaces
set softtabstop=4
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
autocmd Filetype javascript setlocal softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype gitcommit,markdown setlocal spell

set ignorecase
set smartcase

set wildmenu

" " show the matching part of the pair for [] {} and ()
set showmatch
"
" " enable all Python syntax highlighting features
" " let python_highlight_all = 0
set background=dark
set backspace=indent,eol,start

" Set to auto read when a file is changed from the outside
set autoread

" Coolio search
set incsearch

" US Spellings
set spelllang=en_us

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

set mouse=a

" " vim-plug section
call plug#begin()

Plug 'conradirwin/vim-bracketed-paste'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'raimondi/delimitmate'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'godlygeek/tabular'

Plug 'sheerun/vim-polyglot'

Plug 'rodjek/vim-puppet'

Plug 'airblade/vim-gitgutter'

Plug 'tomtom/tcomment_vim'

Plug 'myhere/vim-nodejs-complete'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
elseif has('python3')
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'zchee/deoplete-jedi'
endif

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#python_path = '/usr/bin/python3'
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
let g:airline_theme='raven'

