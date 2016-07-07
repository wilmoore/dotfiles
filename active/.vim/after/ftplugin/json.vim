setlocal autowrite
setlocal equalprg=jsonpp\ %
setlocal foldmethod=syntax
let b:syntastic_json_checkers = ['jsonlint']
