" ----------------------------------------
" Key Bindings
" ----------------------------------------

" -------
" Escape (to normal mode)
" -------

" Instead of a custom mapping, I am going back to the default of <C-[> for the following reasons:

" 1. There is a painful pause whenever you want to type a literal `j`.
" 2. If you use `set -o vi` in your shell (I do) the custom mapping is not available so you have to get used to multiple mappings.
" 3. When pair programming with another VIM you'll have to remember the default mapping anyhow.

" Why <C-[> instead of <ESC>?
" Because <C-[> is much more natural for my fingers to reach.

" -------
" Paste
" -------

" When pasting over visually selected content, do not overwrite the paste buffer.
" http://stackoverflow.com/a/10723838/128346
vnoremap p "_dP"

" <Ctrl-U> -- unformatted system clipboard paste without need to toggle paste.
" http://stackoverflow.com/a/3217023/128346
map <C-U> "+p

" -------
" Window/Split Navigation
" -------

" double-tab to cycle through windows/splits.
map <Tab><Tab> <C-W>w

" -------
" Quoting
" -------

" A simple alternative to "surround" plugins (though, not a complete replacement).
" Inspired by Steve Losh's tutorial; however, enhanced to handle punctuated content and adds "`" quoting.
" http://learnvimscriptthehardway.stevelosh.com/chapters/09.html

:nnoremap "" viW<esc>a"<esc>hBi"<esc>lel " example.com => "example.com"
:nnoremap '' viW<esc>a'<esc>hBi'<esc>lel " example.com => 'example.com'
:nnoremap `` viW<esc>a`<esc>hBi`<esc>lel " example.com => `example.com`
:nnoremap {{ viW<esc>a}<esc>hBi{<esc>lel " example.com => {example.com}

" Use something like "tpope/vim-surround" if you need:
"
" - support for swapping surrounding charaters
" - un-surrounding
" - support for complex surrounds like `<em>`
" - or support arbitrary motions and object you should try

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

" [OVERRIDE] (:h gf) enhances intrinsic `gf` by opening in tab instead of current buffer.
map gf :tabedit <cfile><CR>

" go to previous tab (same as gT, but easier to type).
map ggt :tabprevious<CR>

" -------
" Quickfix Toggle
" -------

" Use qq to toggle quick fix window (http://learnvimscriptthehardway.stevelosh.com/chapters/38.html).
nnoremap qq :call QuickfixToggle()<cr>

