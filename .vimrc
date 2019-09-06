set nocompatible
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'rust-lang/rust.vim'
call plug#end()

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Rendering
set ttyfast

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

let g:rustfmt_autosave = 1
