" ----------------------------------------
" User Interface
" ----------------------------------------

" -------
" Common
" -------

" Don't show the mode since Powerline shows it
" set noshowmode

" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set guitablabel=%M\ %t
endif

" -------
" Terminal Colors
" -------

" when not running in GUI mode
if !has('gui_running')
  set t_Co=256
endif

" -------
" General Color Scheme
" -------

" general
set background=light

" Spacegray Theme (https://github.com/ajh17/Spacegray.vim)
colorscheme spacegray

" -------
" Fonts
" -------

" should match the setting in your terminal for consistency
if has("gui_running")
  " (i.e. MacVIM)
  " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  " set guifont=Droid\ Sans\ Mono\ for\ Powerline:h18
  set guifont=Sauce\ Code\ Powerline:h15
endif

" -------
" Line Numbers
" -------

" turn on line numbering
set number
set relativenumber

" toggle relative line numbering depending on mode
" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement
:autocmd InsertEnter * :set norelativenumber
:autocmd InsertLeave * :set relativenumber

" -------
" Scrolling
" -------

" begin scrolling N before top/bottom margins
set scrolloff=0
set sidescrolloff=15
set sidescroll=1
