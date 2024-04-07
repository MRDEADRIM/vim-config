" Plugin Manager
source ~/.vim/external/plug.vim


call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

call plug#end()
