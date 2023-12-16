syntax on
set relativenumber number
set cursorline
set hlsearch
set incsearch
set spell
set wildmenu
set nowrap
filetype indent on

set wildignore+=*/vendor/*,*/DESIGN,

" Netrw Configs
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Color Scheme
source ~/.vim/color/layout.vim

" Key Bindings
source ~/.vim/custom/key_bindings.vim

" Abbreviation
source ~/.vim/custom/abbreviations.vim

