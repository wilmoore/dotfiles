" ----------------------------------------
" Utilities
" ----------------------------------------

" -------
" Reload $MYVIMRC
" -------

" Reload vimrc whenever a vim config file is modified
augroup reload_vimrc
  autocmd!
  autocmd bufwritepost $MYVIMRC source $MYVIMRC
  autocmd bufwritepost ~/.vim/* source $MYVIMRC
augroup END

