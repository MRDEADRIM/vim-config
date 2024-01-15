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
"set statusline=
"set statusline+=[%<%f\]
"set statusline+=%m 
"set statusline+=%r 
"set statusline+=%=  
"set statusline+=[%n]
"set statusline+=%y
"set statusline+=[%l:%c 
"set statusline+=\ %p%%] 


function Gitbranch()
	    return trim(system("git branch 2> /dev/null | sed -e 's/..//'"))
endfunction

set statusline+=\ %t%y\~(%{Gitbranch()})


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





