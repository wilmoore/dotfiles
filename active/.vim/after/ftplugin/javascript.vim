" Inspiration:
" http://stackoverflow.com/a/731393/128346
" http://stackoverflow.com/a/3098685/128346

:set autowrite
:set makeprg=[[\ -f\ Makefile\ ]]\ &&\ make\ \\\|\\\|\ node\ %
