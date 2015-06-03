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

" enable branch
let g:airline_enable_branch = 1

" enable syntastic
let g:airline_enable_syntastic = 1

" linecolumn prefix
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '

" branch prefix
let g:airline_branch_prefix = '⎇ '

" paste symbol
let g:airline_paste_symbol = 'ρ'
let g:airline_paste_symbol = 'Þ'
let g:airline_paste_symbol = '∥'

" enabled extentions
let g:airline#extensions#tabline#enabled = 1

" mode mapping
let g:airline_mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'REPLACE',
      \ 'v' : 'VISUAL',
      \ 'V' : 'V-LINE',
      \ 'c' : 'CMD   ',
      \ '': 'V-BLCK',
      \ }

" -------
" TComment
" -------

" press // to comment current line and/or visually selected line(s).
" NOTE: vim-commentary did not handle visually selected lines well.

map // :TComment<cr>

" -------
" taboo
" -------

set guioptions-=e
set sessionoptions+=tabpages,globals
let g:taboo_tab_format = "(%N) %f%m"

" -------
" vim-markdown
" -------

" drop comments.
let g:markdown_drop_empty_blockquotes = 1

" folding.
let g:markdown_enable_folding = 0

" -------
" smartpairs
" -------

let g:smartpairs_uber_mode = 1

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

" Type `fs` to activate.
let g:ctrlp_map = 'fs'

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

" Quit vim if only Nerdtree is left.
augroup quit_if_only_nerdtree
  autocmd WinEnter * :call CloseIfOnlyNerdTreeLeft()
augroup END

" -------
" Gist
" -------

" let g:gist_clip_command = "pbcopy"
" let g:gist_detect_filetype = 1
" let g:gist_open_browser_after_post = 1
" let g:gist_post_private = 1

" -------
" SQLUtilities
" -------

vmap <silent>sf <Plug>SQLUFormatter<CR>

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
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_python_checkers=['pylint']

" -------
" UltiSnips
" -------

" Inspiration
" https://github.com/honza/vim-snippets (lots of snippets)
" https://gist.github.com/ashb/311512 (CommonJS snippet/template)

" list all available snippets in the current expand context (you need to be in `insert` mode.
let g:UltiSnipsListSnippets = "<c-l>"

" Snippet directories.
let g:UltiSnipsSnippetDirectories = ["bundle/vim-snippets/UltiSnips", "snippets/custom"]

" Trigger configuration.
let g:UltiSnipsExpandTrigger       = "<C-J>"
let g:UltiSnipsJumpForwardTrigger  = "<C-J>"
let g:UltiSnipsJumpBackwardTrigger = "<C-K>"

" split window type for :UltiSnipsEdit.
let g:UltiSnipsEditSplit = "vertical"

" key binding for :UltiSnipsEdit.
noremap <leader>se :UltiSnipsEdit<cr>

" -------
" neocomplete
" -------

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#enable_prefetch = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_refresh_always = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#auto_completion_start_length = 3

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" <CR>: close popup
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <S-CR>: close popup and save indent.
inoremap <silent> <s-CR> <C-r>=<SID>my_scr_function()<CR>
function! s:my_scr_function()
  return pumvisible() ? neocomplete#close_popup()"\<CR>" : "\<CR>"
endfunction

