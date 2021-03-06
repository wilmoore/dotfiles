" ----------------------------------------
" Behaviors
" ----------------------------------------

" -------
" Indentation
" -------

" turn on file type based indentation for all file types
filetype plugin indent on

" -------
" Syntax Highlighting
" -------

" enable/disable syntax highlighting
syntax enable

" -------
" Fix CTRL-x CTRL-F for lines with equal.
" http://vim.wikia.com/wiki/FileName_Completion_in_Shell_Scripts
" -------

set isfname-==
set isfname-={,}

" -------
" Timeout
" -------

set timeoutlen=2000
set ttimeoutlen=0

" -------
" Buffers & Tabs
" -------

" Specify the behavior when switching between buffers
" http://stackoverflow.com/a/6853779/128346
set switchbuf=useopen

" When to show tab line
set stal=2

" Maximum number of tabs to display
set tabpagemax=50

" -------
" Clipboard
" -------

" Use system clipboard
set clipboard=unnamed

" -------
" File Formats
" -------

" Use Unix as the standard file type
set ffs=unix,dos,mac

" -------
" Completion
" -------

" Show command completion menu (Enable ctrl-n and ctrl-p or tab to scroll thru matches)
set wildmenu

" set wildmode
set wildmode=longest:full,list:full

" stuff to ignore when tab completing
set wildignore+=*.o,*.obj,*~,*.egg-info/**,node_modules/**,dist/**,build/**

" -------
" Find
" -------

" make :find awesome
" SEE: http://www.reddit.com/r/vim/comments/26tayb/what_are_some_simple_builtin_alternatives_to/chubh0k
" SEE: http://vimeo.com/65250028

" search all the things.
set path+=**

" ignore case (mostly for rediculous camel-cased idioms).
set wildignorecase

" file extensions to append.
set suffixesadd+=.c
set suffixesadd+=.coffee
set suffixesadd+=.css
set suffixesadd+=.erl
set suffixesadd+=.ex
set suffixesadd+=.go
set suffixesadd+=.h
set suffixesadd+=.html
set suffixesadd+=.js
set suffixesadd+=.json
set suffixesadd+=.ls
set suffixesadd+=.md
set suffixesadd+=.php
set suffixesadd+=.phpt
set suffixesadd+=.pl
set suffixesadd+=py
set suffixesadd+=.rb
set suffixesadd+=.rs
set suffixesadd+=.scala
set suffixesadd+=.scss
set suffixesadd+=.swift
set suffixesadd+=.sh
set suffixesadd+=.xml
set suffixesadd+=.zsh

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

" show current line indicator.
set cursorline

" show current column indicator.
set cursorcolumn

" When this option is set, the screen will not be redrawn while executing macros, registers and other commands that have not been
" typed. Also, updating the window title is postponed. To force an update use :redraw.
set lazyredraw

" Enable error files & error jumping.
set cf

" Change buffer - without saving
set hidden

" look & feel of visual line/column indicator(s).
highlight CursorLine term=underline cterm=underline gui=underline
highlight CursorLine guibg=#303000 ctermbg=234
highlight CursorColumn guibg=#303000 ctermbg=234
