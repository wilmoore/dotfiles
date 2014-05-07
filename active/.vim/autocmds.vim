" ----------------------------------------
" Auto Commands
" ----------------------------------------

" -------
" Quit vim if only Nerdtree is left.
" -------

augroup quit_if_only_nerdtree
  autocmd WinEnter * :call CloseIfOnlyNerdTreeLeft()
augroup END

" -------
" Reload $MYVIMRC
" -------

" Reload vimrc whenever a vim config file is modified
augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC source $MYVIMRC
  autocmd bufwritepost ~/.vim/* source $MYVIMRC
augroup END

" -------
" Auto-save
" -------

" auto-save all vim buffers when focus is lost (http://unix.stackexchange.com/a/75066)

augroup auto_save
  autocmd BufLeave,FocusLost,VimResized * silent! wall
augroup END

" -------
" Quickfix Auto Open
" -------

" automatically opens the quickfix window when invoking :Ggrep (or any command with `grep` in the name)
" https://github.com/tpope/vim-fugitive/blob/master/README.markdown#faq

augroup quickfix_auto_open
  autocmd!
  autocmd QuickFixCmdPost *grep* nested cwindow
  autocmd QuickFixCmdPost *ag* nested cwindow
augroup END

" -------
" Quickfix Auto Close
" -------

" automatically close the quick fix window when leaving a file (will close vim if the quickfix window is the only visible window/tab).
" http://stackoverflow.com/a/7477056/128346

augroup quickfix_auto_close
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
augroup END

" -------
" Inspiration: https://github.com/mutewinter/dot_vim/blob/master/autocmds.vim
" -------

augroup MyAutoCommands
  " Clear the auto command group so we don't define it multiple times
  " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
  autocmd!

  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

  " Fix trailing whitespace in my most used programming langauges
  autocmd BufWritePre *.py,*.coffee,*.js,*.rb,*.erb,*.md,*.scss,*.vim,Cakefile,
        \*.hbs
        \ silent! :StripTrailingWhiteSpace

  " Help mode bindings
  " <enter> to follow tag, <bs> to go back, and q to quit.
  " From http://ctoomey.com/posts/an-incremental-approach-to-vim/
  autocmd filetype help nnoremap <buffer><cr> <c-]>
  autocmd filetype help nnoremap <buffer><bs> <c-T>
  autocmd filetype help nnoremap <buffer>q :q<CR>

  " Fix accidental indentation in html files
  " from http://morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files.html
  autocmd FileType html setlocal indentkeys-=*<Return>

  " Leave the return key alone when in command line windows, since it's used
  " to run commands there.
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()
augroup END

" -------
" Automatic comment insertion
" -------

" enable automatic comment insertion.
augroup auto_common_insertion
  autocmd!
  autocmd BufEnter * setlocal formatoptions+=ro
augroup END

