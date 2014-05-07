" ----------------------------------------
" User Interface
" ----------------------------------------

" -------
" Common
" -------

" Don't show the mode since Powerline shows it
set noshowmode

" display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set guitablabel=%M\ %t
endif

" -------
" General Color Scheme
" -------

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" -------
" Terminal Colors
" -------

" always use 256 colors.
set t_Co=256

" when not running in GUI mode
" if !has('gui_running')
"   set t_Co=256
" endif

" -------
" Fonts
" -------

" should match the setting in your terminal for consistency
if has("gui_running")
  " (i.e. MacVIM)
  " set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
  set guifont=Sauce\ Code\ Powerline:h12
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

" -------
" Wild Menu
" -------

" Turn on WiLd menu
set wildmenu

set wildmode=longest,list,full

" show command complition menu (Enable ctrl-n and ctrl-p to scroll thru matches)
set wildmenu

" stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*

