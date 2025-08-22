" Get current git branch (if applicable)
function! StatuslineGitBranch()
  let g:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      :silent let l:gitrevparse = system("git -C ". l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let g:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').")"
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

" modified flag
set statusline=%M\ 
" Show complete filepath of current buffer
set statusline+=%F\ 
" gives the filetype
set statusline+=%y\ 
" current git branch
set statusline+=%{g:gitbranch}
" separate left to right justified
set statusline+=%=
" line number/total line count, percentage through the file
set statusline+=Ln\ %l/%L\(%p),\ Col\ %c
