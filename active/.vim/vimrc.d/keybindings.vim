" ----------------------------------------
" Key Bindings
" ----------------------------------------

" source $MYVIMRC.
nmap <Leader>rcl :source $MYVIMRC<CR>

" edit $MYVIMRC in new tab.
nmap <Leader>rce :tabedit $MYVIMRC<CR>

" -------
" Escape (to normal mode)
" -------

" use `jk` for <ESC> (very nice) -- NOTE: if you use `set -o vi` in your shell, `jk` does not work so use <Esc> or <C-[>.
" see: https://github.com/mutewinter/dot_vim/blob/master/mappings.vim#L88-L96
" http://cloudhead.io/2010/04/24/staying-the-hell-out-of-insert-mode/

inoremap jk <Esc>

" -------
" Window/Split Navigation
" -------

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

" -------
" Increment/Decrement
" -------

" support shifted and non-shifted keys. (increment)
nnoremap + <C-a>
nnoremap = <C-a>
nnoremap <Up> <C-a>
nnoremap <Right> <C-a>

" support shifted and non-shifted keys. (decrement)
nnoremap - <C-x>
nnoremap _ <C-x>
nnoremap <Left> <C-x>
nnoremap <Down> <C-x>

" -------
" Quoting
" -------

" inspired by: http://learnvimscriptthehardway.stevelosh.com/chapters/09.html

:nnoremap "" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap '' viw<esc>a'<esc>hbi'<esc>lel

" -------
" Paste
" -------

" <Ctrl-U> -- unformatted system clipboard paste without need to toggle paste.
" http://stackoverflow.com/a/3217023/128346
map <C-U> "+p

" -------
" Undo/Redo
" -------

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" -------
" Tabs
" -------

" [OVERRIDE] (:h gf) enhances intrinsic `gf` by opening in tab instead of current buffer.
map gf :tabedit <cfile><CR>

" go to previous tab (same as gT, but easier to type).
map ggt :tabprevious<CR>

" -------
" Quickfix Toggle
" -------

" Use qq to toggle quick fix window (http://learnvimscriptthehardway.stevelosh.com/chapters/38.html).
nnoremap qq :call QuickfixToggle()<cr>

