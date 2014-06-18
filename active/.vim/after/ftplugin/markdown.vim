setlocal autowrite

if exists(":MarkedOpen")
  nnoremap <buffer> <leader>o :MarkedOpen!<cr>
endif
