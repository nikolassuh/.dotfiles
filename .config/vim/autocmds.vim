augroup cursorPos
  autocmd!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

augroup wipeNetRwBuffer
  autocmd!
  " don't maintain netrw buffer
  autocmd FileType netrw setlocal bufhidden=wipe
augroup END
