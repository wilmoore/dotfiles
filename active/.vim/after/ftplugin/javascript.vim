setlocal autowrite
setlocal omnifunc=javascriptcomplete#CompleteJS

if findfile('.jshintrc', '.;') != ''
  let b:syntastic_checkers = ['jshint']

  if executable('node_modules/.bin/jshint')
    let b:syntastic_javascript_jshint_exec = 'node_modules/.bin/jshint'
  endif
elseif findfile('.eslintrc', '.;') != ''
  let b:syntastic_checkers = ['eslint']

  if executable('node_modules/.bin/eslint')
    let b:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
  endif
else
  let b:syntastic_checkers = ['standard']

  " Point syntastic checker at locally installed `standard` if it exists.
  " https://github.com/scrooloose/syntastic/issues/1571#issuecomment-146630051
  if executable('node_modules/.bin/standard')
    let b:syntastic_javascript_standard_exec = 'node_modules/.bin/standard'
  endif
endif
