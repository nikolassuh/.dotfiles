" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

set autoindent smartindent
" use appropriate number of spaces to act as a <Tab>
set expandtab
set shiftwidth=2 shiftround
set softtabstop=2 tabstop=2

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path=.,**

set wildmenu
set wildignore+=**dist/**,**/node_modules/**,*.pyc,.git/**,venv*/**,.venv/**
set wildignore+=*DS_Store*,*.png,*.jpg,*.jpeg,*.gif
" When more than one match, list all matches and complete till longest common string
set wildmode=list:longest,list:full

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

set backspace=indent,eol,start

set breakindent

" yank to system register
set clipboard=unnamed,unnamedplus

set cmdheight=2

set colorcolumn=80

set complete+=kspell
set completeopt=menuone,longest,preview

set confirm

set cursorline

" Start diff mode with vertical splits
set diffopt+=vertical

" Stop newline continuation of comments
set formatoptions=tqn2j

" Set folding
set foldmethod=indent
set foldlevel=99

" set grep program
if executable('rg')
  set grepprg=rg\ --vimgrep
endif

" search
set hlsearch
set incsearch
set ignorecase
" uses case matching if uppercase is used in the search
set smartcase

" always show last status
set laststatus=2

" Display extra whitespace
set list
set listchars=tab:»\ ,trail:·,nbsp:␣

" for security reasons
set modelines=0
set nomodeline

set nobackup
set nowritebackup
set noerrorbells
set noswapfile

" always use one space when joining lines
"set nojoinspaces

set mouse=a

" numbers
set number
set numberwidth=5
"set relativenumber

" Omni completion provides smart autocompletion for programs.
" When invoked, the text before the cursor is inspected to guess what might follow
" native vim feature that is disabled by default
set omnifunc=syntaxcomplete#Complete

set scrolloff=10

" always show tab line
set showtabline=2

set signcolumn=yes

set splitbelow splitright

" Find tags relative to current file and directory
set tags=./tags;.tags;

" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has("persistent_undo")
  let target_path = expand('~/.undodir')

  " create the directory and any parent directories
  " if the location does not exist.
  if !isdirectory(target_path)
    call mkdir(target_path, "p", 0700)
  endif

  let &undodir=target_path
  set undofile
endif

set title

set timeoutlen=300
set updatetime=250
