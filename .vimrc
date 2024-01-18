set nocompatible
syntax on
filetype indent on
set relativenumber number
set cursorline
set hlsearch
set incsearch
set spell
set wildmenu
set nowrap
set backspace=start
set wildignore+=*/vendor,*/DESIGN,*/.git,*/node_modules
set path+=**
set undofile
set undodir=~/.vim/undo
set directory=~/.vim/swap
set laststatus=2 

let g:netrw_liststyle = 3
" Color Scheme
source ~/.vim/color/layout.vim

" Key Bindings
source ~/.vim/custom/key_bindings.vim

" Abbreviation
source ~/.vim/custom/abbreviations.vim

" Program Syntax
source ~/.vim/programs/syntax.vim

" Script
source ~/.vim/custom/script.vim

" Status_line
source ~/.vim/custom/status_line.vim



