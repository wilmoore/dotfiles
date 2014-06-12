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
" Navigation
" -------

" Makes `j` and `k` behave as you would expect even on wrapped line.
nnoremap j gj
nnoremap k gk

" -------
" Yank
" -------

" Yank entire buffer.
map <leader>y :%y+<cr>

" -------
" Paste
" -------

" <Ctrl-U> -- unformatted system clipboard paste without need to toggle paste.
" http://stackoverflow.com/a/3217023/128346
map <C-U> "+p

" -------
" Window/Split Navigation
" -------

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

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
" This was prompted by a discussion on reddit.com/r/vim (http://redd.it/26tayb).

" example.com =>   example.com
:no <leader>" <esc>Ea"<esc>Bi"<esc>
:vn <leader>" "1c"<esc>"1pa"<esc>

"example.com => 'example.com'
:no <leader>' <esc>Ea'<esc>Bi'<esc>
:vn <leader>' "1c'<esc>"1pa'<esc>

"example.com => `example.com`
:no <leader>` <esc>Ea`<esc>Bi`<esc>
:vn <leader>` "1c`<esc>"1pa`<esc>

"example.com => {example.com}
:no <leader>{ <esc>Ea}<esc>Bi{<esc>
:no <leader>} <esc>Ea}<esc>Bi{<esc>
:vn <leader>{ "1c{<esc>"1pa}<esc>
:vn <leader>} "1c{<esc>"1pa}<esc>

"example.com => (example.com)
:no <leader>( <esc>Ea)<esc>Bi(<esc>
:no <leader>) <esc>Ea)<esc>Bi(<esc>
:vn <leader>( "1c(<esc>"1pa)<esc>
:vn <leader>) "1c(<esc>"1pa)<esc>

"example.com => <example.com>
:no <leader>< <esc>Ea><esc>Bi<<esc>
:no <leader>> <esc>Ea><esc>Bi<<esc>
:vn <leader>< "1c<<esc>"1pa><esc>
:vn <leader>> "1c<<esc>"1pa><esc>

" What you get with something like "tpope/vim-surround":
"
" - support for swapping current surrounding content for new surrounding content.
" - support for removing current surrounding content (i.e. un-surrounding).
" - support for complex/arbitrary surrounding content (i.e. `<em>`).
" - support for arbitrary motions and text objects.

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
" Undo/Redo
" -------

" remap U to <C-r> for easier redo
" from http://vimbits.com/bits/356
nnoremap U <C-r>

" -------
" Tabs
" -------

" go to previous tab (same as gT, but easier to type).
map ggt :tabprevious<CR>

" -------
" Quickfix Toggle
" -------

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

" Use <tab>x3 (three tabs) to toggle quick fix window.
nnoremap <tab><tab><tab> :call QuickfixToggle()<cr>

