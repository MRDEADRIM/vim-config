command! -nargs=0 Gitdiff call ListChangedFiles()






















function! ListChangedFiles()
    let files = systemlist('git diff --name-only')

    if empty(files)
        echo "No changes found."
        return
    endif

    echo "Changed files:"
    for i in range(len(files))
        echo i . " " . files[i]
    endfor

    let choice = input("Enter the index of the file to view changes: ")

    if choice != '' && choice >= 0 && choice < len(files)
        call ViewGitDiff(files[choice])
    else
        echo "Invalid input or file index. Aborted."
    endif
endfunction

function! ViewGitDiff(file)
    let abbrev_path = system('git show HEAD:' . a:file)
    execute "edit " . a:file
    vsplit
    execute "enew | setlocal buftype=nofile | setlocal noswapfile"
    call append(0, split(abbrev_path, "\n"))
    diffthis
    wincmd w
    diffthis
endfunction


