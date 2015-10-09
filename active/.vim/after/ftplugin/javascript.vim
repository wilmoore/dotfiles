setlocal autowrite
setlocal omnifunc=javascriptcomplete#CompleteJS

" JavaScript Standard Style (standardjs.com)
let b:syntastic_checkers = ['standard']

" Point syntastic checker at locally installed `standard` if it exists.
if executable('node_modules/.bin/standard')
  let b:syntastic_javascript_standard_exec = 'node_modules/.bin/standard'
endif
