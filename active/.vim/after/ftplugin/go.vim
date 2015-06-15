setlocal autowrite
setlocal makeprg=go\ build\ %
setlocal equalprg=gofmt\ %
nmap <leader>m :make<CR>:copen<CR>
