setlocal autowrite

" use <leader>v to pre(v)iew markdown files in marked app.
if exists(":MarkedOpen")
  nnoremap <buffer> <leader>v :MarkedOpen<cr>
endif

" use <leader>q to (q)uit pre(v)iew of markdown files in marked app.
if exists(":MarkedQuit")
  nnoremap <buffer> <leader>q :MarkedQuit<cr>
endif

" use `>` as comment prefix in markdown files.
setlocal commentstring=>\ %s
