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
  autocmd!
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
augroup END

