" ----------------------------------------
" Key Bindings
" ----------------------------------------

" make C-<enter> act like <esc> and C-c (obviously you want to have mapped CAPSLOCK to control)
:inoremap <C-[> <esc>

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
" Editing
" -------

" <Ctrl-J> -- split line on first space
nmap <C-J> f r<cr>

" <leader>pp toggles paste mode
map <leader>pp :setlocal paste!<cr>

" <leader>ss toggles spell checking
map <leader>ss :setlocal spell!<cr>

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

" automatically opens the quickfix window after :Ggrep (or any command with `grep` in the name)
" https://github.com/tpope/vim-fugitive/blob/master/README.markdown#faq

autocmd QuickFixCmdPost *grep* nested cwindow

" automatically close the quick fix window when leaving a file (will close vim if the quickfix window is the only visible window/tab).
" http://stackoverflow.com/a/7477056/128346

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Quick fix toggle
" http://learnvimscriptthehardway.stevelosh.com/chapters/38.html

nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

