" -------
" JavaScript
" -------

:autocmd BufWritePost *.js silent! !find . -type f -iregex ".*\.js$" -not -path "./node_modules/*" -exec jsctags {} -f \; | sed '/^$/d' | sort > tags &
