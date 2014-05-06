" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" -------
" Powerline
" -------

set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme='solarized256_dark'

" -------
" Signify
" -------

" http://www.vim.org/scripts/script.php?script_id=4487
let g:signify_mapping_toggle_highlight = '<leader>gh'

" -------
" Choose Window
" -------

" mapping
nmap  -  <Plug>(choosewin)

" show big letters
let g:choosewin_overlay_enable = 1

" -------
" CTRLP
" -------

let g:ctrlp_map = '<c-p>'

" Set this to 1 to set searching by filename (as opposed to full path) as the
let g:ctrlp_by_filename = 0

" -------
" TComment
" -------

" key bindings
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" -------
" NERDTree
" -------

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=26

" close nerdtree after using it to open a file/buffer
let NERDTreeQuitOnOpen = 1

" <leader>f invokes NERDTreeFind
nmap <leader>f :NERDTreeFind<cr>

" default window size
let g:NERDTreeWinSize = 40

" -------
" Fugitive
" -------

" Github domains configuration
let g:fugitive_github_domains = ['http://github.webapps.rr.com']

" -------
" Gist
" -------

let g:gist_clip_command = "pbcopy"
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" -------
" Yankring
" -------

let g:yankring_history_dir = '~/.vim'

" -------
" Syntastic
" -------

" When set, this option will automatically open the |location-list| when a buffer has errors.
" The location list is also closed again when there are no errors.
let g:syntastic_auto_loc_lis=1

" -------
" UltiSnips
" -------

"
" Inspiration
"

" https://github.com/honza/vim-snippets (lots of snippets)
" https://gist.github.com/ashb/311512 (CommonJS snippet/template)

"
" Plugin Installation
" see: https://github.com/SirVer/ultisnips/issues/159#issuecomment-41187390
" and: https://github.com/gmarik/Vundle.vim/pull/234
"

"
" General Configuration.
"

let g:UltiSnipsListSnippets       = "<C-s>"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]

"
" Trigger configuration.
"

let g:UltiSnipsExpandTrigger       = "<C-j>"
let g:UltiSnipsJumpForwardTrigger  = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

"
" If you want :UltiSnipsEdit to split your window.
"

let g:UltiSnipsEditSplit="vertical"

