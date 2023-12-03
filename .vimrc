syntax on
colorscheme habamax
set relativenumber number
set cursorline
set hlsearch
set spell
set wildmenu

" Netrw Configs
let g:netrw_banner = 0
let g:netrw_liststyle = 3


" Custom Key Bindings
nnoremap <c-b> :vertical Lex 30<CR>
nnoremap <F12> :botright term<CR>

vmap <C-c> y:call system("xclip -selection clipboard", getreg("\""))<CR>
map <C-v> :set paste<CR>:read !xclip -selection clipboard -o<CR>:set nopaste<CR>

