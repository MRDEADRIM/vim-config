function! GitBranch()
    let branch = system('git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d "\n"')
    return empty(branch) ? '' : '-[' . branch . ']'
endfunction


set statusline=
set statusline+=[%<%f\%m]
"set statusline+=%{GitBranch()}
set statusline+=%r 
set statusline+=%=  
set statusline+=%y
set statusline+=[%n]
set statusline+=[%l:%c 
set statusline+=\ %p%%] 


