setlocal autowrite
setlocal omnifunc=javascriptcomplete#CompleteJS

" JavaScript Standard Style (standardjs.com)
let b:syntastic_checkers = ['standard']

" Point syntastic checker at locally installed `standard` if it exists.
" https://github.com/scrooloose/syntastic/issues/1571#issuecomment-146630051
if executable('node_modules/.bin/standard')
  let b:syntastic_javascript_standard_exec = 'node_modules/.bin/standard'
endif
