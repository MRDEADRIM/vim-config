let GitBranch=system('git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d "\n"')

set statusline=
set statusline+=[%<%f\%m]

if !empty(GitBranch)
    set statusline+=-[%{GitBranch}]
endif

set statusline+=%r 
set statusline+=%=  
set statusline+=%y
set statusline+=[%n]
set statusline+=[%l:%c 
set statusline+=\ %p%%] 

