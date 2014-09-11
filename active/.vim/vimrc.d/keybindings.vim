" ----------------------------------------
" Key Bindings
" ----------------------------------------

" -------
" Leader
" -------

" use <Space> as leader (thanks: http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity).
" NOTE: YOU MUST map 'caps lock' to 'control' for this to be useful, otherwise it is quite painful.
let mapleader = "\<Space>"

" -------
" Escape (to normal mode)
" -------

" Instead of a custom mapping, I am going back to the default of <C-[> for the following reasons:

" 1. There is a painful pause whenever you want to type a literal `j`.
" 2. If you use `set -o vi` in your shell (I do) the custom mapping is not available so you have to get used to multiple mappings.
" 3. When pair programming with another VIM you'll have to remember the default mapping anyhow.

" Why <C-[> instead of <ESC>?
" Because <C-[> is much more natural for my fingers to reach.
" NOTE: YOU MUST map 'caps lock' to 'control' for this to be useful, otherwise it is quite painful.

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
" Window/Split Navigation
" -------

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

" Resize windows with arrows
map <up>    :resize -5<cr>
map <down>  :resize +5<cr>
map <right> :vertical resize +5<cr>
map <left>  :vertical resize -5<cr>

" -------
" Help
" -------

" get help for the word under the cursor.
map <leader>h :execute ":help " . expand("<cword>")<cr>

" -------
" Open files (find, tab edit, mru)
" -------

" `:find` prompt.
map fo :find 

" `:tabe` prompt.
map to :tabe 

" `:Mru` prompt.
map mo :Mru<cr>
map mro :Mru<cr>

" -------
" Surround (custom surrounds)
" -------

" TBD (see: http://www.reddit.com/r/vim/comments/26mszm/what_is_everyones_favorite_commenting_plugin_and/chtembl)

" -------
" Surround Companion (for quoting stuff)
" -------

" A companion to "tpope/vim-surround" (and similar) plugins.
" Inspired by Steve Losh's tutorial (http://learnvimscriptthehardway.stevelosh.com/chapters/09.html); however, enhanced to handle:
"
" 1. supports punctuated content (i.e. URLs, IP addresses, etc.).
" 2. supports ", ', `, {}, (), and <>.
"
" Why use this if you are already using "surround"?
"
" Surround is great if you want to change surrounding content or if you need to add complex surrounding content;
" however, if you just want to quickly add quotes or brackets, having a quick, hard to forget key sequence is nice.
"
" This was prompted by a "discussion @ http://redd.it/26tayb

" example.com => "example.com"
:no <leader>" gEwi"<esc>Ea"<esc>
:vn <leader>" "1c"<esc>"1pa"<esc>

" example.com => 'example.com'
:no <leader>' gEwi'<esc>Ea'<esc>
:vn <leader>' "1c'<esc>"1pa'<esc>

" example.com => `example.com`
:no <leader>` gEwi`<esc>Ea`<esc>
:vn <leader>` "1c`<esc>"1pa`<esc>

" example.com => *example.com*
:no <leader>* gEwi*<esc>Ea*<esc>
:vn <leader>* "1c*<esc>"1pa*<esc>

" example.com => **example.com**
:no <leader>** gEwi**<esc>Ea**<esc>
:vn <leader>** "1c**<esc>"1pa**<esc>

" example.com => _example.com_
:no <leader>_ gEwi_<esc>Ea_<esc>
:vn <leader>_ "1c_<esc>"1pa_<esc>

" example.com => {example.com}
:no <leader>{ gEwi{<esc>Ea}<esc>
:no <leader>} gEwi{<esc>Ea}<esc>
:vn <leader>{ "1c{<esc>"1pa}<esc>
:vn <leader>} "1c{<esc>"1pa}<esc>

" example.com => example.com
:no <leader>[ gEwi[<esc>Ea]<esc>
:no <leader>] gEwi[<esc>Ea]<esc>
:vn <leader>[ "1c[<esc>"1pa]<esc>
:vn <leader>] "1c[<esc>"1pa]<esc>

" 3+3 => #{3+3}
" user.name => #{user.name}
" user_name => #{user_name}
:no <leader># gEwi#{<esc>Ea}<esc>
" 3 + 3 => #{3 + 3}
:vn <leader># "1c#{<esc>"1pa}<esc>

" example.com => (example.com)
:no <leader>( gEwi(<esc>Ea)<esc>
:no <leader>) gEwi(<esc>Ea)<esc>
:vn <leader>( "1c(<esc>"1pa)<esc>
:vn <leader>) "1c(<esc>"1pa)<esc>

" example.com => <example.com>
:no <leader>< gEwi<<esc>Ea><esc>
:no <leader>> gEwi<<esc>Ea><esc>
:vn <leader>< "1c<<esc>"1pa><esc>
:vn <leader>> "1c<<esc>"1pa><esc>

" What you get with something like "tpope/vim-surround":
"
" - support for swapping current surrounding content for new surrounding content.
" - support for removing current surrounding content (i.e. un-surrounding).
" - support for complex/arbitrary surrounding content (i.e. `<em>`).
" - support for arbitrary motions and text objects.

" Surround-like plugins
"
" tpop/vim-surround: https://github.com/tpope/vim-surround
" rhysd/vim-operator-surround: https://github.com/rhysd/vim-operator-surround
" vim-addon-surround: https://github.com/MarcWeber/vim-addon-surround
" http://stackoverflow.com/a/2148055/128346

" -------
" Increment/Decrement
" -------

" support shifted and non-shifted keys. (increment)
map + <c-a>

" support shifted and non-shifted keys. (decrement)
map - <c-x>

" -------
" Search
" -------

" clear search highlight
nnoremap <leader>HH :nohlsearch<CR>

" turn on search highlight
nnoremap <leader>H :set hlsearch<CR>

" -------
" Undo/Redo
" -------

" remap U to <C-r> for easier REDO (remember, `r` is for replace, not redo)
" from http://vimbits.com/bits/356
nnoremap U <C-r>

