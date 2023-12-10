syntax on
colorscheme habamax
set relativenumber number
set cursorline
set hlsearch
set spell
set wildmenu
set nowrap
filetype indent on

set wildignore+=*/vendor/*,*/DESIGN,*/assets,*/.assets,

" Netrw Configs
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" Custom Key Bindings
nnoremap <c-b> :vertical Lex 25<CR>
nnoremap <F12> :botright term<CR>

vmap <C-c> y:call system("xclip -selection clipboard", getreg("\""))<CR>
map <C-v> :set paste<CR>:read !xclip -selection clipboard -o<CR>:set nopaste<CR>


" Abbreviation
abbr _onclick $('btn').click(function(){code});<Esc>^e 

abbr _log console.log('string');<Esc>bb

abbr _ajax $.ajax({<CR> url: "{{ route('URL') }}",<CR> type: "method",<CR> data: {<CR> data1:data1,<CR> data2:data2,<CR> },<CR> success: function(response) {<CR> console.log(response);<CR> },<CR> error: function(xhr, status, error) {<CR> console.error('error');<CR> }<CR> });

abbr _ajaxcsrf $.ajax({<CR> url: "{{ route('URL') }}",<CR> type: "method",<CR> data: {<CR> data1:data1,<CR> data2:data2,<CR> },<CR> headers:{<CR> 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')<CR> }, <CR> success: function(response) {<CR> console.log(response);<CR> },<CR> error: function(xhr, status, error) {<CR> console.error('error');<CR> }<CR> });

abbr _route Route::method('/url', 'Controller@function')->name('string');<Esc>^fm
