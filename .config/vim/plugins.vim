call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

call plug#end()


" FZF
if isdirectory(expand('~').'/.fzf')
  set rtp+=~/.fzf
endif

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let g:fzf_preview_window = ['right,60%', 'ctrl-/']
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = expand('~').'/.local/share/fzf-history'

" Open buffers
nnoremap <Leader>ls :Buffers<CR>

" Lines in current buffer
nnoremap <C-f> :BLines<CR>

" Lines in loaded buffers
nnoremap <Leader><C-f> :Lines<CR>

" using ripgrep with fzf.vim
nnoremap <Leader>rg :Rg<CR>
nnoremap <Leader>rgw :Rg <C-r><C-w><CR>

" Files (runs $FZF_DEFAULT_COMMAND if defined)
nnoremap <Leader>f<Space> :Files<Space>
nnoremap <Leader>ff :Files .<CR>

" Git files (git ls-files)
nnoremap <Leader>gf :GFiles<CR>
" Git files (git status)
nnoremap <Leader>gfs :GFiles?<CR>

" v:oldfiles and open buffers
nnoremap <Leader>hi :History<CR>
" Command history
nnoremap <Leader>ch :History:<CR>
" Search history
nnoremap <Leader>sh :History/<CR>

nnoremap <Leader>ma :Marks<CR>

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable delays and poor user experience
set updatetime=300
" Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved
set signcolumn=yes


" undotree
nnoremap <Leader>ut :UndotreeToggle<CR>
let g:undotree_WindowLayout = 2
let g:undotree_SplitWidth = 40


" vim-textobj-user
" create your own custom text objects
call textobj#user#plugin('datetime', {
\   'date': {
\     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
\     'select': ['ad', 'id'],
\   },
\   'time': {
\     'pattern': '\<\d\d:\d\d:\d\d\>',
\     'select': ['at', 'it'],
\   },
\ })


" vim-fugitive
nnoremap <Leader>git :Git<CR>
