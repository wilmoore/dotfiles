" ----------------------------------------
" Formatting
" ----------------------------------------

" do not wrap
set nowrap

" Wrap lines at convenient points
set linebreak

" -------
" Encodings
" -------

" Set utf8 as standard encoding and en_US as the standard language
" set encoding=utf8
set encoding=utf-8

" -------
" Comments
" -------

" treat certain characters as comment leader (for bullet lists, etc.)
set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-

" enable automatic comment insertion.
set formatoptions+=ro

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

