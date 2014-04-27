" ----------------------------------------
" Input
" ----------------------------------------

" -------
" Mouse
" -------

set mouse=a
set ttym=xterm2

" -------
" Keyboard
" -------

" <Ctrl-C> -- copy selected to system clipboard (see: " http://vim.wikia.com/wiki/Quick_yank_and_paste).
vmap <C-C> "*y

" <Ctrl-A> -- visually select all and copy to system clipboard.
map <C-A> ggvG$"*y<C-o><C-o>

" <Ctrl-U> -- unformatted system clipboard paste without need to toggle paste.
" http://stackoverflow.com/a/3217023/128346
map <C-U> "+p

