" ----------------------------------------
" Key Bindings
" ----------------------------------------

" -------
" Escape (to normal mode)
" -------

" Instead of a custom mapping, I am going back to the default of <C-[> for the following reasons:

" 1. If you use `set -o vi` in your shell (as I do) the custom mapping is not available so you have to get used to this mapping anyway.
" 2. When pair programming with another VIMmer you'll have to remember the default mapping.

" Why <C-[> instead of <ESC>?
" Because <C-[> is much more natural for my fingers to reach.
" NOTE: YOU MUST map 'caps lock' to 'control' for this to be useful, otherwise it is quite painful.


" -------
" Leader
" -------

" use <Space> as leader (thanks: http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity).
" NOTE: YOU MUST map 'caps lock' to 'control' for this to be useful, otherwise it is quite painful.
let mapleader = "\<Space>"

" -------
" Help
" -------

" get help for the word under the cursor.
map <leader>H :execute ":help " . expand("<cword>")<cr>


" -------
" Spell
" -------

map <leader><leader>s ]s
map <leader>s z=


" -------
" Yank
" -------

" Yank (copy) entire buffer.
map <leader>y :%y+<cr>
map <leader>a :%y+<cr>


" -------
" Paste
" -------

" <leader>p -- unformatted system clipboard paste without need to toggle paste.
" http://stackoverflow.com/a/3217023/128346
map <leader>p <esc>"+p


" -------
" Window, Split Navigation
" -------

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

" Resize windows with arrows
map <up>    :resize -5<cr>
map <down>  :resize +5<cr>
map <right> :vertical resize +5<cr>
map <left>  :vertical resize -5<cr>


" -------
" Buffer Navigation & Management
" https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
" -------

" open a new empty buffer
nmap <leader>n :enew<cr>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>c :bp <BAR> bd #<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>


" -------
" Open files (ctrl{p,t}, find, tab edit, mru)
" -------

" `:find` prompt (find and open).
map fo :find

" `:Mru` prompt (most recently opened).
map mo :Mru<cr>
map mro :Mru<cr>


" -------
" Surround (custom surrounds)
" -------

" TBD (see: http://www.reddit.com/r/vim/comments/26mszm/what_is_everyones_favorite_commenting_plugin_and/chtembl)

" surrounds powered by "machakann/vim-sandwich"
nmap s <Nop>
xmap s <Nop>

" example.com => "example.com"
nmap <leader><leader>w saiW
nmap <leader><leader>W saiW

" { foo: 'bar' } => { "foo": 'bar' }
nmap <leader>w saiw
nmap <leader>W saiw

" same as above but with visual selection
vmap <leader>w sa
vmap <leader>W sa

" -------
" Surround Companion (for quoting stuff)
" DEPRECATED IN FAVOR OF ABOVE.
" OLD STUFF FOR REFERENCE: https://gist.github.com/wilmoore/240ece8b2b8f853dc9c375b4b921064d
" -------

" 3+3 => #{3+3}
" user.name => #{user.name}
" user_name => #{user_name}
:no <leader><leader># gEwi#{<esc>Ea}<esc>B
:no <leader># gEwi#{<esc>ea}<esc>B
" 3 + 3 => #{3 + 3}
:vn <leader># "1c#{<esc>"1pa}<esc>B


" -------
" Increment/Decrement
" -------

" support + for increment (instead of only <c-a>)
map + <c-a>

" support = for increment (+ is ok but you need to hit <shift> to get to it)
map = <c-a>

" support - for decrement (instead of only <c-x>)
map - <c-x>


" -------
" Undo/Redo
" -------

" remap U to <C-r> for easier REDO (remember, `r` is for replace, not redo)
" from http://vimbits.com/bits/356
nnoremap U <C-r>
