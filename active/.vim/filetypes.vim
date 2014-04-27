" ----------------------------------------
" File Types
" ----------------------------------------

" -------
" Indentation
" -------

" turn on file type based indentation for all file types
filetype plugin indent on

" -------
" File Formats
" -------

" Use Unix as the standard file type
set ffs=unix,dos,mac

" -------
" Overrides
" -------

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

" CSS (tab width 2 chr)
autocmd FileType css set et
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

" JavaScript (tab width 2 chr)
autocmd FileType javascript set et
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2

autocmd! BufRead,BufNewFile *.jbuilder,Gemfile,Rakefile,Procfile,Guardfile setf ruby
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile Guardfile set filetype=ruby
au BufRead,BufNewFile */nginx/*.conf set filetype=nginx
au BufRead,BufNewFile *.jbuilder setf ruby
au BufRead,BufNewFile *.jeco setf html
au BufRead,BufNewFile *.jss set filetype=css
au BufRead,BufNewFile *.hbs set filetype=mustache

