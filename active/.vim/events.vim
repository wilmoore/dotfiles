" ----------------------------------------
" Events
" ----------------------------------------

" -------
" on focus lost
" -------

" auto-save all vim buffers when focus is lost (http://unix.stackexchange.com/a/75066)
autocmd BufLeave,FocusLost,VimResized * silent! wall

