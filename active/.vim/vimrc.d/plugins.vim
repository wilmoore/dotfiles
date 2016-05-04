" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" -------
" airline
" -------

" theme
let g:airline_theme = 'luna'

" powerline fonts.
let g:airline_powerline_fonts = 1

" Enable the list of buffers
" (https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs)
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
" (https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs)
let g:airline#extensions#tabline#fnamemod = ':t'

" -------
" TComment
" -------

" press // to comment current line and/or visually selected line(s).
" NOTE: vim-commentary did not handle visually selected lines well.

map // :TComment<cr>

" -------
" vim-markdown
" https://github.com/gabrielelana/vim-markdown#configuration
" -------

" disable default mappings (seems to help with this issue: https://github.com/jiangmiao/auto-pairs/issues/34)
let g:markdown_enable_mappings = 0

" drop comments.
let g:markdown_drop_empty_blockquotes = 1

" folding.
let g:markdown_enable_folding = 0

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

" highlight lines in Sy and vimdiff etc.)

highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227

" highlight signs in Sy

highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

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

" Open CtrlP in find buffer mode by default
let g:ctrlp_cmd = 'CtrlPBuffer'

" Type `<CTRL>+l` to activate.
let g:ctrlp_map = '<c-l>'

" Set this to 1 to set searching by filename (as opposed to full path).
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1

" Make Ctrl-P plugin a lot faster for Git projects (http://dougblack.io/words/a-good-vimrc.html)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" -------
" MRU
" -------

if empty(expand($XDG_CACHE_HOME))
  let MRU_File="/tmp/vim_mru_files"
else
  let MRU_File=expand($XDG_CACHE_HOME). "/vim/vim_mru_files"
endif

" -------
" NERDTree
" -------

" fe (file explore) invokes NERDTreeFind
nmap fe :NERDTreeFind<cr>

" CWD is changed when the NERD tree is first loaded to the directory it is initialized in.
let g:NERDTreeChDirMode = 1

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

" show hidden files
let NERDTreeShowHidden=1

" show bookmarks
let NERDTreeShowBookmarks=1

" close nerdtree after using it to open a file/buffer
let NERDTreeQuitOnOpen = 1

" default window size
let g:NERDTreeWinSize = 40

" Quit vim if only Nerdtree is left.
augroup quit_if_only_nerdtree
  autocmd WinEnter * :call CloseIfOnlyNerdTreeLeft()
augroup END

" -------
" Syntastic
" See ../after/ftplugin for file specific settings
" SEE: http://usevim.com/2016/03/07/linting
" -------

" When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
let g:syntastic_auto_loc_list = 1

" When set, this option will automatically check syntax errors on write.
let g:syntastic_check_on_wq = 1

" When set, syntastic runs all checkers that apply then aggregates errors found by all checkers in a single list.
let g:syntastic_aggregate_errors = 1

" When set, syntastic checks the file/buffer when opened (default = 1; however, this can slow things down)
let g:syntastic_check_on_open = 0

" for syntax errors, defaults to '>>'
let g:syntastic_error_symbol = '❌'

" where syntastic error sign is displayed
highlight link SyntasticErrorSign SignColumn

" for style errors, defaults to 'S>'
let g:syntastic_style_error_symbol = '⁉️'

" where syntastic style error sign is displayed
highlight link SyntasticStyleErrorSign SignColumn

" for syntax warnings, defaults to '>>'
let g:syntastic_warning_symbol = '⚠️'

" where syntastic warning sign is displayed
highlight link SyntasticWarningSign SignColumn

" for style warnings, defaults to 'S>'
let g:syntastic_style_warning_symbol = '💩'

" where syntastic style warning sign is displayed
highlight link SyntasticStyleWarningSign SignColumn
