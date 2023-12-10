nnoremap <c-b> :vertical Lex 25<CR>
nnoremap <F12> :botright term<CR>

vmap <C-c> y:call system("xclip -selection clipboard", getreg("\""))<CR>
map <C-v> :set paste<CR>:read !xclip -selection clipboard -o<CR>:set nopaste<CR>

