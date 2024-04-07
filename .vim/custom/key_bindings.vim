"nnoremap <c-b> :vertical Lex 25<CR>

vnoremap <C-C> :w !xclip -selection clipboard<CR><CR>

let mapLeader = ","

"External

nnoremap <Leader>u :UndotreeToggle<CR>

nnoremap <Leader>f :FZF<CR>


"Git Keybinding
nnoremap <Leader>gs :Git<CR>
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>ga :Gcommit --amend<CR>
nnoremap <Leader>gt :Gcommit -v -q %<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>
nnoremap <Leader>gl :silent! Glog<CR>
nnoremap <Leader>gp :Ggrep<Space>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>gb :Git branch<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gps :Dispatch! git push<CR>
nnoremap <Leader>gpl :Dispatch! git pull<CR>
