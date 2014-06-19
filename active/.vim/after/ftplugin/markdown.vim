setlocal autowrite

" use <leader>o to preview markdown files in marked.
if exists(":MarkedOpen")
  nnoremap <buffer> <leader>o :MarkedOpen!<cr>
endif

" use `>` as comment prefix in markdown files.
setlocal commentstring=>\ %s

