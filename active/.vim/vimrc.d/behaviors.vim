" ----------------------------------------
" Behaviors
" ----------------------------------------

" -------
" Vim Info
" -------

set viminfo+=n$HOME/.vim/viminfo

" -------
" Sound
" -------

" disable beeping (aka "bell") and window flashing
" http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" -------
" Visual Editor Indicators
" -------

set cursorline
highlight CursorLine term=underline cterm=underline gui=underline

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed. Also, updating the window title is postponed. To force an
" update use :redraw
set lazyredraw

" Enable error files & error jumping.
set cf

" Change buffer - without saving
set hidden

" -------
" Keywords
" -------

" Add extra characters that are valid parts of variables""
set iskeyword+=\$,-

" -------
" Timeout
" -------

set ttimeoutlen=50

" -------
" Syntax Highlighting
" -------

" enable/disable syntax highlighting
syntax on
syntax enable

" -------
" Tabs
" -------

" Maximum number of tabs to display
set tabpagemax=50

" -------
" Clipboard
" -------

" Use system clipboard
set clipboard=unnamed

" -------
" Buffers
" -------

" Remember info about open buffers on close
set viminfo^=%

" Specify the behavior when switching between buffers
" http://stackoverflow.com/a/6853779/128346
set switchbuf=useopen,usetab,newtab
set stal=2

" -------
" Backup and Swap
" -------

" Turn backup off, since most stuff is in source control
set nobackup
set nowb
set noswapfile

" -------
" Search
" -------

set hlsearch
set incsearch

" clear search highlight
nnoremap <space> :nohlsearch<CR>

