" ----------------------------------------
" Key Bindings
" ----------------------------------------

" $MYVIMRC reload.
nmap <Leader>rcl :source $MYVIMRC<CR>

" $MYVIMRC edit in new tab.
nmap <Leader>rce :tabnew $MYVIMRC<CR>

" -------
" Escape (to normal mode)
" -------

" use `jk` for <ESC> (very nice) -- NOTE: if you use `set -o vi` in your shell, `jk` does not work so use <Esc> or <C-[>.
" see: https://github.com/mutewinter/dot_vim/blob/master/mappings.vim#L88-L96
:inoremap jk <Esc>
:inoremap JK <Esc>
:inoremap Jk <Esc>
:inoremap jK <Esc>

" -------
" Window/Split Navigation
" -------

" use the standard movement keys (with CTRL modifier) to navigate windows/splits.
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

" -------
" Copy/Paste
" -------

" <Ctrl-A> -- visually select all and copy to system clipboard.
map <C-A> ggvG$"*y<C-o><C-o>

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

" [OVERRIDE] (:h gf) enhances intrinsice `gf` by opening in tab instead of current buffer.
map gf :tabedit <cfile><CR>

" go to previous tab (same as gT, but easier to type).
map ggt :tabprevious<CR>

" -------
" Quickfix Toggle
" -------

" Use qq to toggle quick fix window (http://learnvimscriptthehardway.stevelosh.com/chapters/38.html).
nnoremap qq :call QuickfixToggle()<cr>

