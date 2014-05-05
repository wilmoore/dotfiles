" ----------------------------------------
" Formatting
" ----------------------------------------

" unix line endings (why would you not?)
if &modifiable
  set ff=unix
endif

" do not wrap
set nowrap

" Wrap lines at convenient points
set linebreak

" continue comment markers on new line
:set formatoptions+=ro

" -------
" Encodings
" -------

" Set utf8 as standard encoding and en_US as the standard language
" set encoding=utf8
set encoding=utf-8

" -------
" Fill Characters
" -------

set fillchars+=stl:\ ,stlnc:\

" -------
" Indent
" -------

" indent
set autoindent
set smartindent

" sane editing (tabs)
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" convert all typed tabs to spaces
set expandtab

