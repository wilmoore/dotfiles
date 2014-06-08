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
" open-browser
" -------

let g:netrw_nogx = 1 " disable netrw's gx mapping.

" open url.
nmap gx <Plug>(openbrowser-open)
vmap gx <Plug>(openbrowser-open)

" search word.
nmap gs <Plug>(openbrowser-search)
vmap gs <Plug>(openbrowser-search)

" -------
" Signify
" http://www.vim.org/scripts/script.php?script_id=4487
" -------

" Enable line highlighting in addition to using signs by default.
let g:signify_line_highlight = 1

" -------
" SplitJoin
" -------

let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

map sjs :SplitjoinSplit<cr>
nmap sjj :SplitjoinJoin<cr>

" -------
" CtrlP
" -------

" Type `fs` to activate.
let g:ctrlp_map = 'fs'

" Set this to 1 to set searching by filename (as opposed to full path).
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1

" Make Ctrl-P plugin a lot faster for Git projects (thanks: http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity)
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

" -------
" TComment
" -------

" key bindings
nmap // <Plug>CommentaryLine
vmap // <Plug>CommentaryLine

" -------
" Expand Region
" -------

" key bindings (thanks to: http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity)
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" -------
" Swapit & SpeedDating
" -------

nmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
nmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown
vmap <Plug>SwapItFallbackIncrement <Plug>SpeedDatingUp
vmap <Plug>SwapItFallbackDecrement <Plug>SpeedDatingDown

" -------
" MRU
" -------

let MRU_File=expand($HOME). "/.vim/.vim_mru_files"

" -------
" NERDTree
" -------

" fl invokes NERDTreeFind
nmap ff :NERDTreeFind<cr>

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
" Syntastic
" -------

" When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_auto_loc_list = 1

" When set, this option will automatically check syntax errors on write.
let g:syntastic_check_on_wq = 1

" When set, syntastic runs all checkers that apply then aggregates errors found by all checkers in a single list.
let g:syntastic_aggregate_errors = 1

let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_javascript_checkers = ['jshint', 'eslint']
let g:syntastic_python_checkers=['pylint']

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

