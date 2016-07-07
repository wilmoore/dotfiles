setlocal autowrite
setlocal omnifunc=javascriptcomplete#CompleteJS

if findfile('.jshintrc', '.;') != ''
  let b:syntastic_checkers = ['jshint']

  " Point syntastic checker at locally installed `jshint` if it exists.
  if executable('`npm bin`/jshint')
    let b:syntastic_javascript_jshint_exec = '`npm bin`/jshint'
  endif
elseif findfile('.eslintrc', '.;') != ''
  let b:syntastic_checkers = ['eslint']
  " conditionally loading `eslint` seems to break so let's always assume we
  " have it locally until we can figure this out.
  let b:syntastic_javascript_eslint_exec = '`npm bin`/eslint'
else
  let b:syntastic_checkers = ['standard']

  " Point syntastic checker at locally installed `standard` if it exists.
  " https://github.com/scrooloose/syntastic/issues/1571#issuecomment-146630051
  if executable('`npm bin`/standard')
    let b:syntastic_javascript_standard_exec = '`npm bin`/standard'
  endif
endif
