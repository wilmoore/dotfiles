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

" always use 256 colors.
set t_Co=256

" when not running in GUI mode
if !has('gui_running')
  set t_Co=256
endif

" -------
" General Color Scheme
" -------

" general
set background=dark

" Oceanic Next Theme (yosiat/oceanic-next-vim)
colorscheme OceanicNext

" -------
" Fonts
" -------

" should match the setting in your terminal for consistency
if has("gui_running")
  " (i.e. MacVIM)
  " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  " set guifont=Sauce\ Code\ Powerline:h12
  set guifont=Droid\ Sans\ Mono\ for\ Powerline:h18
endif

" -------
" Line Numbers
" -------

" turn on line numbering
set number

" -------
" Scrolling
" -------

" begin scrolling N before top/bottom margins
set scrolloff=0
set sidescrolloff=15
set sidescroll=1

