setlocal autowrite
setlocal equalprg=jsonpp\ %
let b:syntastic_json_checkers = ['jsonlint']
