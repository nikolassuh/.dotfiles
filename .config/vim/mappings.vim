let mapleader = " "
let maplocalleader = " "

map <Leader>so :source ~/.dotfiles/.config/vim/vimrc<CR>

" Jump between windows
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

" Some terminals have colliding keymaps
" or are not able to send distinct keycodes
"<C-S-h>, <C-w>H
"<C-S-l>, <C-w>L
"<C-S-j>, <C-w>J
"<C-S-k>, <C-w>K

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Take off training wheels
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" preferred movement
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" stop that strange Q mode
nnoremap Q <nop>

" make Y behave like the other capital letters
nnoremap Y y$

" close current buffer
nnoremap <Leader>bd :bdelete<CR>

" move to next buffer
nnoremap <Leader>bn :bnext<CR>
" go to previous buffer
nnoremap <Leader>bp :bprevious<CR>

" visually select all
nnoremap <C-a> ggVG

" change current directory
nnoremap <Leader>cd :cd <C-R>=expand('%:p:h').'/'<CR>

" open change window
nnoremap <Leader>co :copen 10<CR>
nnoremap <Leader>cw :cwindow<CR>
" close quickfix window
nnoremap <Leader>ccl :cclose<CR>

" quickfix navigation
nnoremap <Leader>cn :cnext<CR>
nnoremap <Leader>cp :cprevious<CR>

" close window
nnoremap <Leader>clo :close<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" jump to definition
nnoremap <Leader>gd <C-]>

" grep/search for text
nnoremap <Leader>gr :grep<Space>

" Toggle ignorecase during searches
nnoremap <Leader>ic :set ignorecase!<CR>

" replace all in c window
nnoremap <Leader>rc :cdo s//gc<Left><Left><Left>

" list register
nnoremap <Leader>reg :register<CR>

" Open file system on the right in vertical split and resize
"nnoremap <Leader>nt :Lexplore <bar> :vertical resize 40<CR>
nnoremap <Leader>nt :call ToggleNetRW() <Bar> : vertical resize 60<CR>
nnoremap <C-b> :call ToggleNetRW() <Bar> : vertical resize 60<CR>

" Have current window be the only window visible
nnoremap <Leader>on :only<CR>

" toggle paste mode
nnoremap <Leader>pp :set paste!<CR>

" quit all, no save
nnoremap QQ :qa!<CR>

" Toggle number
nnoremap <Leader>num :set number!<CR>
" Toggle relativenumber
nnoremap <Leader>rnu :set relativenumber!<CR>

" delete current buffer and the file
nnoremap <Leader>RM :call delete(expand('%')) \| bdelete!<CR>

" Toggle spelling
nnoremap <Leader>sp :set spell!<CR>

" substitutions
nnoremap <Leader>S :%s/\<\><Left><Left>

" NOTE: update does not change timestamp if no changes have been made
nnoremap <C-s> :update<CR>

" save & quit all
nnoremap WW :wqa<CR>

" yank whole file to clipboard
nnoremap <Leader>yf :%y+<CR>
" yank line to clipboard
nnoremap <Leader>yl :y+<CR>

" Turn off current search highlight
nnoremap <Esc> :noh<CR>
