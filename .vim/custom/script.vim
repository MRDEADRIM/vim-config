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



let g:commit_num= 1

function! ViewOlderCommitOfCurrentFile(commit_num)
	let commit_ref = 'HEAD~' . a:commit_num
	let current_file = expand('%:p')  " Get the full path of the current file
	let git_root = systemlist('git rev-parse --show-toplevel')[0]  " Get the root directory of the Git repository
	let relative_path = substitute(current_file, '^' . git_root . '/', '', '')  " Get the path relative to the Git root

	" Get the list of commits that touched the file
	let commits = systemlist('git log --pretty=format:%H -- ' . relative_path)
	if len(commits) == 0
		echo "Error: The file '" . relative_path . "' was not found in any previous commits."
		return
	endif

	" Find the commit at the specified position in the list
	if a:commit_num >= len(commits)
		echo "Error: The specified commit number exceeds the number of commits that touched the file."
		return
	endif
	let commit_ref = commits[a:commit_num]

	let previous_version = system('git show ' . commit_ref . ':' . relative_path)
	if v:shell_error
		echo "Error: Failed to retrieve the file contents from the specified commit."
		return
	endif
	call ViewOlderCommitFile(commit_ref, relative_path)
endfunction

function! ViewOlderCommitFile(commit_num, file)
	let abbrev_path = system('git show ' . a:commit_num . ':' . a:file)
	execute "edit " . a:file
	vsplit
	execute "enew | setlocal buftype=nofile | setlocal noswapfile"
	call append(0, split(abbrev_path, "\n"))
	diffthis
	wincmd w
	diffthis
endfunction

function! CloseLeftWindow()
	wincmd h
	close
endfunction

function! UpdateCommitRef(direction)
	if a:direction == 'next'
		let g:commit_num+= 1
	elseif a:direction == 'previous'
		let g:commit_num-= 1
	endif
	 echom "Current commit: " g:commit_num
	call ViewOlderCommitOfCurrentFile(g:commit_num)
endfunction

nnoremap <silent> <C-p> :call CloseLeftWindow()<CR>:call UpdateCommitRef('next')<CR>
nnoremap <silent> <C-n> :call CloseLeftWindow()<CR>:call UpdateCommitRef('previous')<CR>
