" ----------------------------------------
" Behaviors
" ----------------------------------------

" -------
" Indentation
" -------

" turn on file type based indentation for all file types
filetype plugin indent on

" -------
" File Formats
" -------

" Use Unix as the standard file type
set ffs=unix,dos,mac

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
set suffixesadd+=.erl
set suffixesadd+=.ex
set suffixesadd+=.go
set suffixesadd+=.h
set suffixesadd+=.html
set suffixesadd+=.js
set suffixesadd+=.json
set suffixesadd+=.ls
set suffixesadd+=.php
set suffixesadd+=.phpt
set suffixesadd+=.pl
set suffixesadd+=py
set suffixesadd+=.rb
set suffixesadd+=.scala
set suffixesadd+=.sh
set suffixesadd+=.xml
set suffixesadd+=.zsh

" -------
" Common
" -------

" When editing a file, always jump to the last cursor position.
" This must be after the uncompress commands.
augroup jump_to_last_position_on_open
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END

" Fix trailing whitespace in my most used programming langauges
augroup fix_trailing_whitespace
  autocmd!
  autocmd BufWritePre *.py,*.coffee,*.js,*.rb,*.erb,*.md,*.scss,*.vim,Cakefile,
        \*.hbs
        \ silent! :StripTrailingWhiteSpace
augroup END

" Help mode bindings
" <enter> to follow tag, <bs> to go back, and q to quit.
" From http://ctoomey.com/posts/an-incremental-approach-to-vim/
augroup help_mode_bindings
  autocmd!
  autocmd filetype help nnoremap <buffer><cr> <c-]>
  autocmd filetype help nnoremap <buffer><bs> <c-T>
  autocmd filetype help nnoremap <buffer>q :q<CR>
augroup END

" Fix accidental indentation in html files (this should probably go into an ftplugin)
" from http://morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files.html
augroup fix_html_indentation
  autocmd!
  autocmd FileType html setlocal indentkeys-=*<Return>
augroup END

" Leave the return key alone when in command line windows, since it's used to run commands there.
augroup fix_return_in_cmdline
  autocmd!
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()
augroup END

" -------
" Comments
" -------

" enable automatic comment insertion.
augroup auto_common_insertion
  autocmd!
  autocmd BufEnter * setlocal formatoptions+=ro
augroup END

" -------
" Quickfix
" -------

" automatically opens the quickfix window when invoking :Ggrep (or any command with `grep` in the name)
" https://github.com/tpope/vim-fugitive/blob/master/README.markdown#faq

augroup quickfix_auto_open
  autocmd!
  autocmd QuickFixCmdPost *grep* nested cwindow
  autocmd QuickFixCmdPost *ag* nested cwindow
augroup END

" automatically close the quick fix window when leaving a file (will close vim if the quickfix window is the only visible window/tab).
" http://stackoverflow.com/a/7477056/128346

augroup quickfix_auto_close
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
augroup END


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

" Add extra characters that are valid parts of variables
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

