set nocompatible
syntax on
filetype indent on
set relativenumber number
set cursorline
set hlsearch
set incsearch
set spell
set wildmenu
set wildoptions=pum
set nowrap
set backspace=start
set path+=**
set undofile
set undodir=~/.vim/undo
set directory=~/.vim/swap
set wildignore+=*/vendor,*/DESIGN,*/.git,*/node_modules
set laststatus=2 
let g:netrw_liststyle = 3
set splitbelow


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

" Status line
source ~/.vim/custom/status_line.vim

" Plugin Manager External Plugins
source ~/.vim/external/external_plugin.vim
 

