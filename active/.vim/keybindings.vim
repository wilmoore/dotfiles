" ----------------------------------------
" Key Bindings
" ----------------------------------------

" $MYVIMtC reload
nmap <Leader>rc :source $MYVIMRC<CR>

" $MYVIMRC open buffer for editing in new tab/buffer
nmap <Leader>rt :tabnew $MYVIMRC<CR>

" $MYVIMRC open buffer for editing in current tab/buffer
nmap <Leader>re :e $MYVIMRC<CR>

" take off the training wheels
:inoremap  <Up>     <nop>
:inoremap  <Down>   <nop>
:inoremap  <Left>   <nop>
:inoremap  <Right>  <nop>
:noremap   <Up>     <nop>
:noremap   <Down>   <nop>
:noremap   <Left>   <nop>
:noremap   <Right>  <nop>

" -------
" Escape
" -------

" use `jk` for <ESC> (very nice) -- NOTE: if you use `set -o vi` in your shell, `jk` does not work there so you should not unbind <Esc> as you'll need it there.
" see: https://github.com/mutewinter/dot_vim/blob/master/mappings.vim#L88-L96
:inoremap jk <Esc>
:inoremap JK <Esc>
:inoremap Jk <Esc>
:inoremap jK <Esc>

" -------
" Editing
" -------

" <Ctrl-J> -- split line on first space
nmap <C-J> f r<cr>

" <leader>pp toggles paste mode
map <leader>pp :setlocal paste!<cr>

" <leader>ss toggles spell checking
map <leader>ss :setlocal spell!<cr>

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" -------
" Opening URLS
" -------

" open url under cursor
map gu :!open <cfile><cr>

" -------
" Git Conflicts
" -------

" [goto] Git Conflict
nmap gc /^<<<<<<< HEAD$<cr>

" -------
" Tabs
" -------

" Useful mappings for managing tabs (Vim 7 specific mappings)
if version >= 700
  nnoremap <C-t> :tabnew<cr>
  nnoremap <C-l> :tabnext<cr>
  nnoremap <C-h> :tabprevious<cr>
endif

" opens a new tab edit the file whose name is under or after the cursor
:map gt :tabedit <cfile><CR>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" -------
" Quickfix Toggle
" -------

" Use <leader>q to toggle quick fix window (http://learnvimscriptthehardway.stevelosh.com/chapters/38.html).
nnoremap <leader>q :call QuickfixToggle()<cr>

" -------
" Navigation
" -------

" Page/Scroll UP/DOWN with CTRL + [kj]
" see: https://github.com/mutewinter/dot_vim/blob/master/mappings.vim#L72-L86
nnoremap <C-j> 15gjzz
nnoremap <C-k> 15gkzz
vnoremap <C-j> 15gjzz
vnoremap <C-k> 15gkzz

